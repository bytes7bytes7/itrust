import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/rules_provider.dart';

part 'rules_provider.g.dart';

const _route = '/rules/';

@Singleton(as: RulesProvider)
@RestApi()
abstract class ProdRulesProvider implements RulesProvider {
  @factoryMethod
  factory ProdRulesProvider(Dio dio, ServerSettings settings) {
    return ProdRulesProvider._(
      dio,
      baseUrl: '${settings.httpBaseUri}$_route',
    );
  }

  factory ProdRulesProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdRulesProvider;

  @override
  @GET('/')
  Future<JsonEitherWrapper<ProblemDetails, RulesResponse>> getRules();
}
