import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../domain/dto/refresh_token_request/refresh_token_request.dart';
import '../../../domain/dto/refresh_token_response/refresh_token_response.dart';
import '../../../domain/providers/keep_fresh_token_provider.dart';

part 'keep_fresh_token_provider.g.dart';

const _route = '/auth/';

@Singleton(as: KeepFreshTokenProvider)
@RestApi()
abstract class ProdKeepFreshTokenProvider implements KeepFreshTokenProvider {
  @factoryMethod
  factory ProdKeepFreshTokenProvider(Dio dio, ServerSettings settings) {
    return ProdKeepFreshTokenProvider._(
      dio,
      baseUrl: '${settings.httpBaseUri}$_route',
    );
  }

  factory ProdKeepFreshTokenProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdKeepFreshTokenProvider;

  @override
  @POST('/refresh_token')
  Future<JsonEitherWrapper<ProblemDetails, RefreshTokenResponse>> refreshToken(
    @Body() RefreshTokenRequest request,
  );
}
