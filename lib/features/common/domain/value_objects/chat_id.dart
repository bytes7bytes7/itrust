import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_id.freezed.dart';

part 'chat_id.g.dart';

@freezed
class ChatID with _$ChatID {
  const factory ChatID(
    String value,
  ) = _ChatID;

  const ChatID._();

  factory ChatID.fromJson(Map<String, Object?> json) => _$ChatIDFromJson(json);

  String get str => value;
}
