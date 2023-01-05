import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/value_object.dart';
import 'message.dart';

part 'chat.freezed.dart';

part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  const factory Chat.monologue({
    required ChatID id,
    required int unreadAmount,
    required String title,
    Message? lastMessage,
    String? pic,
    String? icon,
  }) = MonologueChat;

  const factory Chat.dialogue({
    required ChatID id,
    required int unreadAmount,
    required UserID partnerID,
    Message? lastMessage,
  }) = DialogueChat;

  const factory Chat.group({
    required ChatID id,
    required int unreadAmount,
    required String title,
    Message? lastMessage,
    String? pic,
  }) = GroupChat;

  factory Chat.fromJson(Map<String, Object?> json) => _$ChatFromJson(json);
}
