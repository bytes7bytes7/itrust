import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../user_id/user_id.dart';

part 'chat_id.freezed.dart';

part 'chat_id.g.dart';

const _dialoguePrefix = 'd';

@freezed
class ChatID with _$ChatID {
  const factory ChatID(
    String value,
  ) = _ChatID;

  const ChatID._();

  factory ChatID.createDialogue(UserID firstID, UserID secondID) {
    final id1 = firstID.str;
    final id2 = secondID.str;

    if (id1.compareTo(id2) < 0) {
      return ChatID('$_dialoguePrefix$id1$id2');
    }

    return ChatID('$_dialoguePrefix$id2$id1');
  }

  factory ChatID.fromJson(JsonMap json) => _$ChatIDFromJson(json);

  factory ChatID.fromString(String string) => ChatID(string);

  String get str => value;
}
