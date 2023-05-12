import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/chat_event_response/chat_event_response.dart';

@Singleton(as: JsonConverter<ChatEventResponse, JsonMap>)
class ChatEventResponseJsonConverter
    extends JsonConverter<ChatEventResponse, JsonMap> {
  const ChatEventResponseJsonConverter();

  @override
  ChatEventResponse fromJson(JsonMap json) {
    return ChatEventResponse.fromJson(json);
  }

  @override
  JsonMap toJson(ChatEventResponse object) {
    return object.toJson();
  }
}
