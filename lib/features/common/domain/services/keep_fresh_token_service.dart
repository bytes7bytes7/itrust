import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/refresh_token_request/refresh_token_request.dart';
import '../exceptions/server_not_available.dart';
import '../providers/auth_status_provider.dart';
import '../providers/keep_fresh_token_exception_provider.dart';
import '../providers/keep_fresh_token_provider.dart';
import '../providers/server_availability_provider.dart';
import '../repositories/end_user_repository.dart';
import '../services/token_service.dart';
import '../value_objects/token_pair/token_pair.dart';
import 'device_info_service.dart';

@singleton
class KeepFreshTokenService {
  const KeepFreshTokenService({
    required TokenService tokenService,
    required KeepFreshTokenProvider keepFreshTokenProvider,
    required AuthStatusProvider authStatusProvider,
    required DeviceInfoService deviceInfoService,
    required KeepFreshTokenExceptionProvider keepFreshTokenExceptionProvider,
    required ServerAvailabilityProvider serverAvailabilityProvider,
    required EndUserRepository endUserRepository,
  })  : _tokenService = tokenService,
        _keepFreshTokenProvider = keepFreshTokenProvider,
        _authStatusProvider = authStatusProvider,
        _deviceInfoService = deviceInfoService,
        _keepFreshTokenExceptionProvider = keepFreshTokenExceptionProvider,
        _serverAvailabilityProvider = serverAvailabilityProvider,
        _endUserRepository = endUserRepository;

  final TokenService _tokenService;
  final KeepFreshTokenProvider _keepFreshTokenProvider;
  final AuthStatusProvider _authStatusProvider;
  final DeviceInfoService _deviceInfoService;
  final KeepFreshTokenExceptionProvider _keepFreshTokenExceptionProvider;
  final ServerAvailabilityProvider _serverAvailabilityProvider;
  final EndUserRepository _endUserRepository;

  Future<JsonEitherWrapper<ProblemDetails, T>> request<T>(
    Future<JsonEitherWrapper<ProblemDetails, T>> Function() callback,
  ) async {
    await _checkServerAvailability();

    final response = await callback();

    return await response.value.match(
      (l) async {
        if (l.title == _keepFreshTokenExceptionProvider.tokenExpired) {
          final refreshToken = await _tokenService.getRefreshToken();

          if (refreshToken == null) {
            await _logOut();

            throw Exception('No tokens found');
          }

          final deviceInfo = await _deviceInfoService.getDeviceInfo();
          final request = RefreshTokenRequest(
            refreshToken: refreshToken,
            deviceInfo: deviceInfo,
          );

          final refreshResponse =
              await _keepFreshTokenProvider.refreshToken(request);

          return await refreshResponse.value.match(
            (l) async {
              await _logOut();

              throw Exception('Wrong refresh token');
            },
            (r) async {
              await _tokenService.setTokenPair(
                TokenPair(
                  access: r.accessToken,
                  refresh: r.refreshToken,
                ),
              );

              return callback();
            },
          );
        }

        return response;
      },
      (r) {
        return response;
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
    _authStatusProvider.setTo(false);
    await _tokenService.removeTokens();
    await _endUserRepository.removeMe();
  }
}
