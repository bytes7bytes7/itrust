import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/chat_list_provider.dart';

part 'chat_list_provider.g.dart';

const _route = '/chats/';

const _idParam = 'id';

@Singleton(as: ChatListProvider)
@RestApi()
abstract class ProdChatListProvider implements ChatListProvider {
  @factoryMethod
  factory ProdChatListProvider(Dio dio, ServerSettings settings) {
    return ProdChatListProvider._(
      dio,
      baseUrl: '${settings.httpBaseUri}$_route',
    );
  }

  factory ProdChatListProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdChatListProvider;

  @override
  @GET('/')
  Future<JsonEitherWrapper<ProblemDetails, ChatsResponse>> getChats({
    @Query('lastChatID') String? lastChatID,
  });

  @override
  @GET('/{$_idParam}/')
  Future<JsonEitherWrapper<ProblemDetails, ChatResponse>> getChat({
    @Path(_idParam) required String id,
  });
}
