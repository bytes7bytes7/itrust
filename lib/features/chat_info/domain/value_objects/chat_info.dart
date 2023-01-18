import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/domain/domain.dart';
import 'user_chat_info.dart';

part 'chat_info.freezed.dart';

part 'chat_info.g.dart';

@freezed
class ChatInfo with _$ChatInfo {
  const factory ChatInfo({
    required ChatID chatID,
    required List<UserChatInfo> participants,
  }) = _ChatInfo;

  factory ChatInfo.fromJson(Map<String, Object?> json) =>
      _$ChatInfoFromJson(json);
}
