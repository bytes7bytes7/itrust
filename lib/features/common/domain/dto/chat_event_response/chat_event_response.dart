import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/chat/chat.dart';
import '../../value_objects/chat_id/chat_id.dart';

part 'chat_event_response.g.dart';

@JsonSerializable()
class ChatEventResponse {
  const ChatEventResponse({
    this.created = const [],
    this.deleted = const [],
    this.updated = const [],
  });

  final List<Chat> created;
  final List<ChatID> deleted;
  final List<Chat> updated;

  factory ChatEventResponse.fromJson(JsonMap json) =>
      _$ChatEventResponseFromJson(json);

  JsonMap toJson() => _$ChatEventResponseToJson(this);
}
