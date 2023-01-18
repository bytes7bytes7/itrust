import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_id.freezed.dart';

part 'message_id.g.dart';

@freezed
class MessageID with _$MessageID {
  const factory MessageID(
    String value,
  ) = _MessageID;

  const MessageID._();

  factory MessageID.fromJson(Map<String, Object?> json) =>
      _$MessageIDFromJson(json);

  String get str => value;
}
