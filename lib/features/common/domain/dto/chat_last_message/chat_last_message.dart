import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/chat_id/chat_id.dart';
import '../../value_objects/message_id/message_id.dart';

part 'chat_last_message.g.dart';

@JsonSerializable()
class ChatLastMessage {
  const ChatLastMessage({
    required this.chatID,
    required this.messageID,
  });

  final ChatID chatID;
  final MessageID? messageID;

  factory ChatLastMessage.fromJson(JsonMap json) =>
      _$ChatLastMessageFromJson(json);

  JsonMap toJson() => _$ChatLastMessageToJson(this);
}
