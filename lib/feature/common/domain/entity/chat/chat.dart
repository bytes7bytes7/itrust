import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_object/value_object.dart';
import '../message/message.dart';

part 'chat.freezed.dart';

part 'chat.g.dart';

@Freezed(
  unionKey: 'type',
)
class Chat with _$Chat {
  /// Chat for only 1 user.
  /// All messages in this chat are always read.
  const factory Chat.monologue({
    required ChatID id,
    required int unreadAmount,
    required String title,
    Message? lastMessage,
    String? picUrl,
    String? iconName,
  }) = MonologueChat;

  /// Direct messages between two users.
  /// There is NO ability to add more users.
  const factory Chat.dialogue({
    required ChatID id,
    required int unreadAmount,
    required UserID partnerID,
    Message? lastMessage,
  }) = DialogueChat;

  /// Chat for 1..N user(s).
  const factory Chat.group({
    required ChatID id,
    required int unreadAmount,
    required String title,
    Message? lastMessage,
    String? picUrl,
  }) = GroupChat;

  factory Chat.fromJson(Map<String, Object?> json) => _$ChatFromJson(json);
}
