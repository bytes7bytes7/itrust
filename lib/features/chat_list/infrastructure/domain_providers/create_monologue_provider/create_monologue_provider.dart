import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../../common/domain/dto/chat_response/chat_response.dart';
import '../../../domain/dto/create_monologue_chat_request/create_monologue_chat_request.dart';
import '../../../domain/providers/create_monologue_provider.dart';

part 'create_monologue_provider.g.dart';

const _route = '/chats/';

@Singleton(as: CreateMonologueProvider)
@RestApi()
abstract class ProdCreateMonologueProvider implements CreateMonologueProvider {
  @factoryMethod
  factory ProdCreateMonologueProvider(Dio dio, ServerSettings settings) {
    return ProdCreateMonologueProvider._(
      dio,
      baseUrl: '${settings.httpBaseUri}$_route',
    );
  }

  factory ProdCreateMonologueProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdCreateMonologueProvider;

  @override
  @POST('/monologue')
  Future<JsonEitherWrapper<ProblemDetails, ChatResponse>> createChat({
    @Body() required CreateMonologueChatRequest request,
  });
}
