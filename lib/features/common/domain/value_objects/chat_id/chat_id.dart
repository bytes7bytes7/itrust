import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'chat_id.freezed.dart';

part 'chat_id.g.dart';

@freezed
class ChatID with _$ChatID {
  const factory ChatID(
    String value,
  ) = _ChatID;

  const ChatID._();

  factory ChatID.fromJson(JsonMap json) => _$ChatIDFromJson(json);

  factory ChatID.fromString(String string) => ChatID(string);

  String get str => value;
}
