import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/entities/message/message.dart';
import '../../../../common/domain/value_objects/message_id/message_id.dart';

part 'message_event_response.g.dart';

@JsonSerializable()
class MessageEventResponse {
  const MessageEventResponse({
    required this.created,
    required this.deleted,
    required this.updated,
  });

  final List<Message> created;
  final List<MessageID> deleted;
  final List<Message> updated;

  factory MessageEventResponse.fromJson(JsonMap json) =>
      _$MessageEventResponseFromJson(json);

  JsonMap toJson() => _$MessageEventResponseToJson(this);
}
