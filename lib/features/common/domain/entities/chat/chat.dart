import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/value_objects.dart';
import '../media/media.dart';

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
    required String title,
    String? iconName,
    Media? pic,
    MessageID? lastMessageID,
  }) = MonologueChat;

  /// Direct messages between two users.
  /// There is NO ability to add more users.
  const factory Chat.dialogue({
    required ChatID id,
    required UserID partnerID,
    required int unreadAmount,
    MessageID? lastMessageID,
  }) = DialogueChat;

  /// Chat for 1..N user(s).
  const factory Chat.group({
    required ChatID id,
    required UserID ownerID,
    required int participantsAmount,
    required String title,
    required int unreadAmount,
    Media? pic,
    MessageID? lastMessageID,
  }) = GroupChat;

  factory Chat.fromJson(JsonMap json) => _$ChatFromJson(json);
}
