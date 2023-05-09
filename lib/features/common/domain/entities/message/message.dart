import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/value_objects.dart';
import '../media/media.dart';

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
    required bool isReadyByMe,
    required String markUp,
    required Map<String, String> markUpData,
    DateTime? willBeBurntAt,
  }) = InfoMessage;

  const factory Message.user({
    required MessageID id,
    required ChatID chatID,
    required UserID senderID,
    required DateTime sentAt,
    required bool isReadyByMe,
    required String text,
    required List<Media> mediaIDs,
    DateTime? willBeBurntAt,
    DateTime? modifiedAt,
  }) = UserMessage;

  factory Message.fromJson(JsonMap json) =>
      _$MessageFromJson(json);
}
