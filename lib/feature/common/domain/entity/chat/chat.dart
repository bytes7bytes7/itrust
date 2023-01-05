import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../util/wrapped.dart';
import '../../value_object/value_object.dart';
import '../message.dart';

part 'chat.freezed.dart';

part 'chat.g.dart';

part 'dialogue_chat_business_logic.dart';

part 'group_chat_business_logic.dart';

part 'monologue_chat_business_logic.dart';

@Freezed(
  unionKey: 'type',
  copyWith: false,
)
class Chat with _$Chat {
  const factory Chat.monologue({
    required ChatID id,
    required int unreadAmount,
    required String title,
    Message? lastMessage,
    String? picUrl,
    String? iconName,
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
    String? picUrl,
  }) = GroupChat;

  factory Chat.fromJson(Map<String, Object?> json) => _$ChatFromJson(json);
}
