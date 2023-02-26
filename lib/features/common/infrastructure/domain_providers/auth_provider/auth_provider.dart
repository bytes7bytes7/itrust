import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/utils.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/auth_provider.dart';

part 'auth_provider.g.dart';

@Singleton(as: AuthProvider)
@RestApi()
abstract class ProdAuthProvider implements AuthProvider {
  @factoryMethod
  factory ProdAuthProvider(Dio dio, ServerSettings settings) {
    return ProdAuthProvider._(
      dio,
      baseUrl: '${settings.protocol}://${settings.authority}',
    );
  }

  factory ProdAuthProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdAuthProvider;

  @override
  @POST('/register')
  Future<JsonEitherWrapper<ProblemDetails, RegisterResponse>> register(
    @Body() RegisterRequest request,
  );

  @override
  @POST('/log_in')
  Future<JsonEitherWrapper<ProblemDetails, LogInResponse>> logIn(
    @Body() LogInRequest request,
  );

  @override
  @POST('/log_out')
  Future<JsonEitherWrapper<ProblemDetails, LogOutResponse>> logOut(
    LogOutRequest request,
  );
}
