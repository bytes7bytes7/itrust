import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/message_event_response/message_event_response.dart';

@Singleton(as: JsonConverter<MessageEventResponse, JsonMap>)
class MessageEventResponseJsonConverter
    extends JsonConverter<MessageEventResponse, JsonMap> {
  const MessageEventResponseJsonConverter();

  @override
  MessageEventResponse fromJson(JsonMap json) {
    return MessageEventResponse.fromJson(json);
  }

  @override
  JsonMap toJson(MessageEventResponse object) {
    return object.toJson();
  }
}
