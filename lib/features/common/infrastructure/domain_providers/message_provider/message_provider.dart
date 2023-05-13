import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/message_provider.dart';

part 'message_provider.g.dart';

const _route = '/chats/';

const _chatIDParam = 'chatID';
const _messageIDParam = 'messageID';
const _lastMessageIDParam = 'lastMessageID';

@Singleton(as: MessageProvider)
@RestApi()
abstract class ProdMessageProvider implements MessageProvider {
  @factoryMethod
  factory ProdMessageProvider(Dio dio, ServerSettings settings) {
    return ProdMessageProvider._(
      dio,
      baseUrl: '${settings.httpBaseUri}$_route',
    );
  }

  factory ProdMessageProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdMessageProvider;

  @override
  @GET('/{$_chatIDParam}/messages/{$_messageIDParam}')
  Future<JsonEitherWrapper<ProblemDetails, MessageResponse>> getMessage({
    @Path(_chatIDParam) required String chatID,
    @Path(_messageIDParam) required String messageID,
  });

  @override
  @GET('/{$_chatIDParam}/messages')
  Future<JsonEitherWrapper<ProblemDetails, MessagesResponse>> getMessages({
    @Path(_chatIDParam) required String chatID,
    @Query(_lastMessageIDParam) String? lastMessageID,
  });

  @override
  @POST('/send_message')
  Future<JsonEitherWrapper<ProblemDetails, MessageResponse>> sendMessage({
    @Body() required SendMessageRequest request,
  });
}
