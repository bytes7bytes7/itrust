import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../domain/dto/change_personal_info_request/change_personal_info_request.dart';
import '../../../domain/dto/change_personal_info_response/change_personal_info_response.dart';
import '../../../domain/providers/account_provider.dart';

part 'account_provider.g.dart';

const _route = '/account/';

@Singleton(as: AccountProvider)
@RestApi()
abstract class ProdAccountProvider implements AccountProvider {
  @factoryMethod
  factory ProdAccountProvider(Dio dio, ServerSettings settings) {
    return ProdAccountProvider._(
      dio,
      baseUrl: '${settings.baseUri}$_route',
    );
  }

  factory ProdAccountProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdAccountProvider;

  @override
  @POST('/personal_info')
  Future<JsonEitherWrapper<ProblemDetails, ChangePersonalInfoResponse>>
      changePersonalInfo(
    @Body() ChangePersonalInfoRequest request,
  );
}
