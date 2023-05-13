import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'message_id.freezed.dart';

part 'message_id.g.dart';

@freezed
class MessageID with _$MessageID {
  const factory MessageID(
    String value,
  ) = _MessageID;

  const MessageID._();

  factory MessageID.fromJson(JsonMap json) => _$MessageIDFromJson(json);

  factory MessageID.fromString(String string) => MessageID(string);

  String get str => value;
}
