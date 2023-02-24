import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/dto/dto.dart';
import '../../../domain/providers/auth_provider.dart';

part 'auth_provider.g.dart';

@Singleton(as: AuthProvider)
@RestApi()
abstract class ProdAuthProvider implements AuthProvider {
  @factoryMethod
  factory ProdAuthProvider(Dio dio) = _ProdAuthProvider;

  @override
  @POST('/register')
  Future<RegisterResponse> register(@Body() RegisterRequest request);

  @override
  @POST('/login')
  Future<LogInResponse> logIn(@Body() LogInRequest request);
}
