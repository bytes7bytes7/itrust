import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/message_response/message_response.dart';

@Singleton(as: JsonConverter<MessageResponse, JsonMap>)
class MessageResponseJsonConverter
    extends JsonConverter<MessageResponse, JsonMap> {
  const MessageResponseJsonConverter();

  @override
  MessageResponse fromJson(JsonMap json) {
    return MessageResponse.fromJson(json);
  }

  @override
  JsonMap toJson(MessageResponse object) {
    return object.toJson();
  }
}
