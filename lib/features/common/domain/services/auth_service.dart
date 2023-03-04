import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../dto/dto.dart';
import '../entities/user/user.dart';
import '../exceptions/exceptions.dart';
import '../providers/auth_exception_provider.dart';
import '../providers/auth_provider.dart';
import '../providers/server_availability_provider.dart';
import '../repositories/end_user_repository.dart';
import '../value_objects/token_pair/token_pair.dart';
import '../value_objects/user_id/user_id.dart';
import 'device_info_service.dart';
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
  })  : _serverAvailabilityProvider = serverAvailabilityProvider,
        _authProvider = authProvider,
        _tokenService = tokenService,
        _endUserRepository = endUserRepository,
        _authExceptionProvider = authExceptionProvider,
        _deviceInfoService = deviceInfoService;

  final ServerAvailabilityProvider _serverAvailabilityProvider;
  final AuthProvider _authProvider;
  final TokenService _tokenService;
  final EndUserRepository _endUserRepository;
  final AuthExceptionProvider _authExceptionProvider;
  final DeviceInfoService _deviceInfoService;
  late bool _isLoggedIn;
  final _isLoggedInController = BehaviorSubject<bool>();

  bool get isLoggedIn => _isLoggedIn;

  Stream<bool> get onIsLoggedInChanged => _isLoggedInController.stream;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await _tokenService.init();

    final accessTokenOrNull = await _tokenService.getAccessToken();

    if (accessTokenOrNull != null) {
      final serverAvailable = await _serverAvailabilityProvider.check();

      if (serverAvailable) {
        await _verifyToken();
      } else {
        _isLoggedInController.add(true);
      }
    }
  }

  @disposeMethod
  void dispose() {
    _isLoggedInController.close();
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
        _isLoggedInController.add(false);

        if (l.title == _authExceptionProvider.emailIsAlreadyInUse) {
          throw const EmailIsAlreadyInUse();
        } else {
          throw Exception();
        }
      },
      (r) {
        _isLoggedInController.add(true);

        _tokenService.setTokenPair(
          TokenPair(
            access: r.accessToken,
            refresh: r.refreshToken,
          ),
        );

        // TODO: implement
        _endUserRepository.setMe(
          EndUser(
            id: UserID(r.id.values.first as String),
            avatarUrls: [],
            email: r.email,
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
        _isLoggedInController.add(false);

        if (l.title == _authExceptionProvider.invalidCredentials) {
          throw const InvalidCredentials();
        } else {
          throw Exception();
        }
      },
      (r) {
        _isLoggedInController.add(true);

        _tokenService.setTokenPair(
          TokenPair(
            access: r.accessToken,
            refresh: r.refreshToken,
          ),
        );

        // TODO: implement
        _endUserRepository.setMe(
          EndUser(
            id: UserID(r.id.values.first as String),
            avatarUrls: [],
            email: r.email,
          ),
        );
      },
    );
  }

  Future<void> logOut() async {
    await _checkServerAvailability();

    const request = LogOutRequest();

    final response = await _authProvider.logOut(request);

    response.value.fold(
      (l) {
        if (l.title == _authExceptionProvider.tokenExpired) {
          _isLoggedInController.add(false);

          _tokenService.removeToken();

          _endUserRepository.removeMe();
        } else {
          throw Exception();
        }
      },
      (r) {
        _isLoggedInController.add(false);

        _tokenService.removeToken();

        _endUserRepository.removeMe();
      },
    );
  }

  Future<void> _verifyToken() async {
    final deviceInfo = await _deviceInfoService.getDeviceInfo();

    final request = VerifyTokenRequest(
      deviceInfo: deviceInfo,
    );

    final response = await _authProvider.verifyToken(request);

    response.value.fold(
      (l) {
        _tokenService.removeToken();
        _isLoggedInController.add(false);
      },
      (r) {
        _isLoggedInController.add(true);
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
