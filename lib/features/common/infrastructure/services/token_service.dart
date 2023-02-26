import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

const _authTokenHeaderKey = 'Authorization';

@Singleton(as: TokenService)
class ProdTokenService implements TokenService {
  const ProdTokenService({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  void setToken(String token) {
    final newHeaders = Map<String, Object?>.from(_dio.options.headers)
      ..[_authTokenHeaderKey] = _formatToken(token);

    _dio.options.headers = newHeaders;
  }

  @override
  void removeToken() {
    final newHeaders = Map<String, Object?>.from(_dio.options.headers)
      ..remove(_authTokenHeaderKey);

    _dio.options.headers = newHeaders;
  }

  String _formatToken(String token) {
    return 'Bearer $token';
  }
}
