import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../dto/dto.dart';
import '../exceptions/exceptions.dart';
import '../providers/auth_exception_provider.dart';
import '../providers/auth_provider.dart';
import '../providers/auth_status_provider.dart';
import '../providers/server_availability_provider.dart';
import '../value_objects/token_pair/token_pair.dart';
import 'device_info_service.dart';
import 'keep_fresh_token_service.dart';
import 'token_service.dart';

@singleton
class AuthService {
  AuthService({
    required ServerAvailabilityProvider serverAvailabilityProvider,
    required AuthProvider authProvider,
    required TokenService tokenService,
    required EndUserRepository endUserRepository,
    required AuthExceptionProvider authExceptionProvider,
    required DeviceInfoService deviceInfoService,
    required KeepFreshTokenService keepFreshTokenService,
    required AuthStatusProvider authStatusProvider,
  })  : _serverAvailabilityProvider = serverAvailabilityProvider,
        _authProvider = authProvider,
        _tokenService = tokenService,
        _endUserRepository = endUserRepository,
        _authExceptionProvider = authExceptionProvider,
        _deviceInfoService = deviceInfoService,
        _keepFreshTokenService = keepFreshTokenService,
        _authStatusProvider = authStatusProvider;

  final ServerAvailabilityProvider _serverAvailabilityProvider;
  final AuthProvider _authProvider;
  final TokenService _tokenService;
  final EndUserRepository _endUserRepository;
  final AuthExceptionProvider _authExceptionProvider;
  final DeviceInfoService _deviceInfoService;
  final KeepFreshTokenService _keepFreshTokenService;
  final AuthStatusProvider _authStatusProvider;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await _tokenService.init();

    final accessTokenOrNull = await _tokenService.getAccessToken();

    if (accessTokenOrNull != null) {
      final serverAvailable = await _serverAvailabilityProvider.check();

      if (serverAvailable) {
        try {
          await _verifyToken();
        } catch (e) {
          _authStatusProvider.remove();
        }
      } else {
        final me = _endUserRepository.me;

        if (me != null) {
          _authStatusProvider.setTo(me.id);
        }
      }
    }
  }

  Future<void> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    await _checkServerAvailability();

    final deviceInfo = await _deviceInfoService.getDeviceInfo();

    final request = RegisterRequest(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      deviceInfo: deviceInfo,
    );

    final response = await _authProvider.register(request);

    response.value.fold(
      (l) {
        _authStatusProvider.remove();

        if (l.title == _authExceptionProvider.emailIsAlreadyInUse) {
          throw const EmailIsAlreadyInUse();
        } else {
          throw Exception();
        }
      },
      (r) {
        _authStatusProvider.setTo(r.id);

        _tokenService.setTokenPair(
          TokenPair(
            access: r.accessToken,
            refresh: r.refreshToken,
          ),
        );
      },
    );
  }

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    await _checkServerAvailability();

    final deviceInfo = await _deviceInfoService.getDeviceInfo();

    final request = LogInRequest(
      email: email,
      password: password,
      deviceInfo: deviceInfo,
    );

    final response = await _authProvider.logIn(request);

    response.value.fold(
      (l) {
        _authStatusProvider.remove();

        if (l.title == _authExceptionProvider.invalidCredentials) {
          throw const InvalidCredentials();
        } else {
          throw Exception();
        }
      },
      (r) {
        _authStatusProvider.setTo(r.id);

        _tokenService.setTokenPair(
          TokenPair(
            access: r.accessToken,
            refresh: r.refreshToken,
          ),
        );
      },
    );
  }

  Future<void> logOut() async {
    const request = LogOutRequest();

    final response = await _keepFreshTokenService
        .request(() => _authProvider.logOut(request));

    response.value.fold(
      (l) {
        throw Exception();
      },
      (r) {
        _authStatusProvider.remove();

        _tokenService.removeTokens();

        _endUserRepository.removeMe();
      },
    );
  }

  Future<void> _verifyToken() async {
    final deviceInfo = await _deviceInfoService.getDeviceInfo();

    final request = VerifyTokenRequest(
      deviceInfo: deviceInfo,
    );

    final response = await _keepFreshTokenService
        .request(() => _authProvider.verifyToken(request));

    response.value.fold(
      (l) {
        _tokenService.removeTokens();
        _authStatusProvider.remove();
      },
      (r) {
        final me = _endUserRepository.me;

        if (me != null) {
          _authStatusProvider.setTo(me.id);
        }
      },
    );
  }

  Future<void> _checkServerAvailability() async {
    final serverAvailable = await _serverAvailabilityProvider.check();

    if (!serverAvailable) {
      throw const ServerNotAvailable();
    }
  }
}
