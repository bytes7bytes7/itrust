import 'package:freezed_annotation/freezed_annotation.dart';

import '../media_vm/media_vm.dart';

part 'message_vm.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
class MessageVM with _$MessageVM {
  const factory MessageVM.info({
    required String id,
    required String chatID,
    required String sentAt,
    required bool isReadByMe,
    required String text,
    DateTime? willBeBurntAt,
  }) = InfoMessageVM;

  const factory MessageVM.user({
    required String id,
    required String chatID,
    required String senderID,
    required bool isSentByMe,
    required String senderName,
    required String sentAt,
    required bool isReadByMe,
    required String text,
    required List<MediaVM> media,
    DateTime? willBeBurntAt,
    String? modifiedAt,
  }) = UserMessageVM;
}
