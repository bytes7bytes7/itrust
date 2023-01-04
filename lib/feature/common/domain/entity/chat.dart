import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/value_object.dart';
import 'message.dart';

part 'chat.freezed.dart';

part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    required ChatID id,
    String? avatarUrl,
    // Name of icon if [avatarUrl] == null
    String? icon,
    required String title,
    required List<Message> messages,
    required int unreadAmount,
    required ChatType chatType,
  }) = _Chat;

  factory Chat.fromJson(Map<String, Object?> json) => _$ChatFromJson(json);
}
