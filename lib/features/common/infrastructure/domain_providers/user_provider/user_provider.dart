import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/http.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../domain/dto/get_user_by_id_response/get_user_by_id_response.dart';
import '../../../domain/providers/user_provider.dart';

part 'user_provider.g.dart';

const _route = '/users/';

const _idParam = 'id';

@Singleton(as: UserProvider)
@RestApi()
abstract class ProdUserProvider implements UserProvider {
  @factoryMethod
  factory ProdUserProvider(Dio dio, ServerSettings settings) {
    return ProdUserProvider._(
      dio,
      baseUrl: '${settings.httpBaseUri}$_route',
    );
  }

  factory ProdUserProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdUserProvider;

  @override
  @GET('/id/{$_idParam}')
  Future<JsonEitherWrapper<ProblemDetails, GetUserByIDResponse>> getUserByID(
    @Path(_idParam) String id,
  );
}
