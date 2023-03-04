import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

const _authTokenHeaderKey = 'Authorization';
const _accessTokenStorageKey = 'access token';
const _refreshTokenStorageKey = 'refresh token';

@Singleton(as: TokenService)
class ProdTokenService implements TokenService {
  const ProdTokenService({
    required Dio dio,
    required FlutterSecureStorage secureStorage,
  })  : _dio = dio,
        _secureStorage = secureStorage;

  final Dio _dio;
  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> init() async {
    final tokenOrNull = await _secureStorage.read(key: _accessTokenStorageKey);

    if (tokenOrNull != null) {
      _setTokenToHeaders(tokenOrNull);
    }
  }

  @override
  Future<String?> getAccessToken() async {
    return _secureStorage.read(key: _accessTokenStorageKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return _secureStorage.read(key: _refreshTokenStorageKey);
  }

  @override
  Future<void> setTokenPair(TokenPair tokenPair) async {
    _setTokenToHeaders(tokenPair.access);

    await _secureStorage.write(
      key: _accessTokenStorageKey,
      value: tokenPair.access,
    );
    await _secureStorage.write(
      key: _refreshTokenStorageKey,
      value: tokenPair.refresh,
    );
  }

  @override
  Future<void> removeTokens() async {
    final newHeaders = Map<String, Object?>.from(_dio.options.headers)
      ..remove(_authTokenHeaderKey);

    _dio.options.headers = newHeaders;

    await _secureStorage.delete(key: _accessTokenStorageKey);
    await _secureStorage.delete(key: _refreshTokenStorageKey);
  }

  String _formatToken(String token) {
    return 'Bearer $token';
  }

  void _setTokenToHeaders(String token) {
    final newHeaders = Map<String, Object?>.from(_dio.options.headers)
      ..[_authTokenHeaderKey] = _formatToken(token);

    _dio.options.headers = newHeaders;
  }
}
