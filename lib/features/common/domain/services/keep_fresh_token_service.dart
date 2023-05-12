import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../../utils/json_either_wrapper.dart';
import '../dto/refresh_token_request/refresh_token_request.dart';
import '../exceptions/server_not_available.dart';
import '../providers/auth_status_provider.dart';
import '../providers/device_info_provider.dart';
import '../providers/keep_fresh_token_exception_provider.dart';
import '../providers/keep_fresh_token_provider.dart';
import '../providers/server_availability_provider.dart';
import '../value_objects/token_pair/token_pair.dart';

@singleton
class KeepFreshTokenService {
  KeepFreshTokenService({
    required TokenRepository tokenRepository,
    required KeepFreshTokenProvider keepFreshTokenProvider,
    required AuthStatusProvider authStatusProvider,
    required DeviceInfoProvider deviceInfoProvider,
    required KeepFreshTokenExceptionProvider keepFreshTokenExceptionProvider,
    required ServerAvailabilityProvider serverAvailabilityProvider,
    required EndUserRepository endUserRepository,
  })  : _tokenRepository = tokenRepository,
        _keepFreshTokenProvider = keepFreshTokenProvider,
        _authStatusProvider = authStatusProvider,
        _deviceInfoProvider = deviceInfoProvider,
        _keepFreshTokenExceptionProvider = keepFreshTokenExceptionProvider,
        _serverAvailabilityProvider = serverAvailabilityProvider,
        _endUserRepository = endUserRepository;

  final TokenRepository _tokenRepository;
  final KeepFreshTokenProvider _keepFreshTokenProvider;
  final AuthStatusProvider _authStatusProvider;
  final DeviceInfoProvider _deviceInfoProvider;
  final KeepFreshTokenExceptionProvider _keepFreshTokenExceptionProvider;
  final ServerAvailabilityProvider _serverAvailabilityProvider;
  final EndUserRepository _endUserRepository;
  var _refreshing = Completer()..complete();

  Future<JsonEitherWrapper<ProblemDetails, T>> request<T>(
    Future<JsonEitherWrapper<ProblemDetails, T>> Function() callback,
  ) async {
    while (true) {
      await _checkServerAvailability();

      final response = await callback();

      final result = await response.value.match(
        (l) async {
          if (l.title == _keepFreshTokenExceptionProvider.tokenExpired) {
            await _refreshToken();
          } else {
            throw Exception('Unexpected response');
          }

          return null;
        },
        (r) async {
          return response;
        },
      );

      if (result != null) {
        return result;
      }
    }
  }

  Future<Stream<JsonEitherWrapper<ProblemDetails, T>>> listen<T>(
    Future<Stream<JsonEitherWrapper<ProblemDetails, T>>> Function() callback,
  ) async {
    await _checkServerAvailability();

    final stream = await callback();

    return stream.asyncMap((event) async {
      return event.value.match(
        (l) async {
          if (l.title == _keepFreshTokenExceptionProvider.tokenExpired) {
            await _refreshToken();
          } else {
            throw Exception('Unexpected response');
          }

          return event;
        },
        (r) async {
          return event;
        },
      );
    });
  }

  Future<void> _refreshToken() async {
    if (!_refreshing.isCompleted) {
      return _refreshing.future;
    }

    _refreshing = Completer();

    final refreshToken = await _tokenRepository.getRefreshToken();

    if (refreshToken == null) {
      await _logOut();

      throw Exception('No tokens found');
    }

    final deviceInfo = await _deviceInfoProvider.getDeviceInfo();
    final request = RefreshTokenRequest(
      refreshToken: refreshToken,
      deviceInfo: deviceInfo,
    );

    final refreshResponse = await _keepFreshTokenProvider.refreshToken(request);

    return await refreshResponse.value.match(
      (l) async {
        await _logOut();

        _refreshing.complete();

        throw Exception('Wrong refresh token');
      },
      (r) async {
        await _tokenRepository.setTokenPair(
          TokenPair(
            access: r.accessToken,
            refresh: r.refreshToken,
          ),
        );

        _refreshing.complete();
      },
    );
  }

  Future<void> _checkServerAvailability() async {
    final serverAvailable = await _serverAvailabilityProvider.check();

    if (!serverAvailable) {
      throw const ServerNotAvailable();
    }
  }

  Future<void> _logOut() async {
    _authStatusProvider.remove();
    await _tokenRepository.removeTokens();
    await _endUserRepository.removeMe();
  }
}
