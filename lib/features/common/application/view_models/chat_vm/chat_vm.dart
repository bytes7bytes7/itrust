import 'package:freezed_annotation/freezed_annotation.dart';

import '../media_vm/media_vm.dart';
import '../message_vm/message_vm.dart';

part 'chat_vm.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
class ChatVM with _$ChatVM {
  const factory ChatVM.monologue({
    required String id,
    required String title,
    String? iconName,
    MediaVM? pic,
    MessageVM? lastMessage,
  }) = MonologueChatVM;

  const factory ChatVM.dialogue({
    required String id,
    required String partnerID,
    required String partnerName,
    required String unreadAmount,
    required String onlineStatus,
    MessageVM? lastMessage,
  }) = DialogueChatVM;

  const factory ChatVM.group({
    required String id,
    required String ownerID,
    required String participantsAmount,
    required String title,
    required String unreadAmount,
    MediaVM? pic,
    MessageVM? lastMessage,
  }) = GroupChatVM;
}
