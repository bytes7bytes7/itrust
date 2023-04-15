import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/user_info_provider.dart';

part 'user_info_provider.g.dart';

const _route = '/users/';

@Singleton(as: UserInfoProvider)
@RestApi()
abstract class ProdUserInfoProvider implements UserInfoProvider {
  @factoryMethod
  factory ProdUserInfoProvider(Dio dio, ServerSettings settings) {
    return ProdUserInfoProvider._(
      dio,
      baseUrl: '${settings.baseUri}$_route',
    );
  }

  factory ProdUserInfoProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdUserInfoProvider;

  @override
  @GET('/info')
  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> getInfo({
    @Query('aboutUserID') required String aboutUserID,
  });
}
