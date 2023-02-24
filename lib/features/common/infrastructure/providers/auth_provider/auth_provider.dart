import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/utils.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/auth_provider.dart';

part 'auth_provider.g.dart';

const _subRoute = '/auth';

@Singleton(as: AuthProvider)
@RestApi()
abstract class ProdAuthProvider implements AuthProvider {
  @factoryMethod
  factory ProdAuthProvider(Dio dio, ServerSettings settings) {
    return ProdAuthProvider._(
      dio,
      baseUrl: '${settings.protocol}://${settings.authority}$_subRoute',
    );
  }

  factory ProdAuthProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdAuthProvider;

  @override
  @POST('/register')
  Future<RegisterResponse> register(@Body() RegisterRequest request);

  @override
  @POST('/login')
  Future<LogInResponse> logIn(@Body() LogInRequest request);
}
