import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

const _authTokenHeaderKey = 'Authorization';
const _authTokenStorageKey = 'auth token';

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
    final tokenOrNull = await _secureStorage.read(key: _authTokenStorageKey);

    if (tokenOrNull != null) {
      _setTokenToHeaders(tokenOrNull);
    }
  }

  @override
  Future<String?> getToken() async {
    return _secureStorage.read(key: _authTokenStorageKey);
  }

  @override
  Future<void> setToken(String token) async {
    _setTokenToHeaders(token);

    await _secureStorage.write(key: _authTokenStorageKey, value: token);
  }

  @override
  Future<void> removeToken() async {
    final newHeaders = Map<String, Object?>.from(_dio.options.headers)
      ..remove(_authTokenHeaderKey);

    _dio.options.headers = newHeaders;

    await _secureStorage.delete(key: _authTokenStorageKey);
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
