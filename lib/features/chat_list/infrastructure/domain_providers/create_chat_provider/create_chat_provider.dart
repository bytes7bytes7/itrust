import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../../common/domain/dto/chat_response/chat_response.dart';
import '../../../../common/domain/dto/users_response/users_response.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/create_chat_provider.dart';

part 'create_chat_provider.g.dart';

const _route = '/chats/';

const _lastUserIDParam = 'lastUserID';

@Singleton(as: CreateChatProvider)
@RestApi()
abstract class ProdCreateChatProvider implements CreateChatProvider {
  @factoryMethod
  factory ProdCreateChatProvider(Dio dio, ServerSettings settings) {
    return ProdCreateChatProvider._(
      dio,
      baseUrl: '${settings.httpBaseUri}$_route',
    );
  }

  factory ProdCreateChatProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdCreateChatProvider;

  @override
  @POST('/monologue')
  Future<JsonEitherWrapper<ProblemDetails, ChatResponse>> createMonologue({
    @Body() required CreateMonologueChatRequest request,
  });

  @override
  @GET('/chat_partners')
  Future<JsonEitherWrapper<ProblemDetails, UsersResponse>> getChatPartners({
    @Query(_lastUserIDParam) String? lastUserID,
  });

  @override
  @POST('/group')
  Future<JsonEitherWrapper<ProblemDetails, ChatResponse>> createGroup({
    @Body() required CreateGroupChatRequest request,
  });
}
