import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/chat_response/chat_response.dart';

@Singleton(as: JsonConverter<ChatResponse, JsonMap>)
class ChatResponseJsonConverter extends JsonConverter<ChatResponse, JsonMap> {
  const ChatResponseJsonConverter();

  @override
  ChatResponse fromJson(JsonMap json) {
    return ChatResponse.fromJson(json);
  }

  @override
  JsonMap toJson(ChatResponse object) {
    return object.toJson();
  }
}
