import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_objects/value_objects.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@Freezed(
  unionKey: 'type',
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
