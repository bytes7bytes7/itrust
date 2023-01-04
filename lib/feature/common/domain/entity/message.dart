import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/value_object.dart';
import 'user.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required MessageID id,
    required ChatID chatID,
    required String text,
    required List<String> mediaUrls,
    required DateTime sentAt,
    required bool isRead,
    User? sender,
    DateTime? modifiedAt,
    DateTime? willBeBurntAt,
  }) = _Message;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
