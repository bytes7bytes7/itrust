import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../util/wrapped.dart';
import '../../value_object/value_object.dart';

part 'message.freezed.dart';

part 'message.g.dart';

part 'info_message_business_logic.dart';

part 'user_message_business_logic.dart';

@Freezed(
  unionKey: 'type',
  copyWith: false,
)
class Message with _$Message {
  const factory Message.info({
    required MessageID id,
    required ChatID chatID,
    required DateTime sentAt,
    required List<UserID> readBy,
    required String markUp,
    required List<String> markUpData,
    DateTime? willBeBurntAt,
  }) = InfoMessage;

  const factory Message.user({
    required MessageID id,
    required ChatID chatID,
    required DateTime sentAt,
    required List<UserID> readBy,
    required String text,
    required List<String> mediaUrls,
    required UserID senderID,
    DateTime? willBeBurntAt,
    DateTime? modifiedAt,
  }) = UserMessage;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
