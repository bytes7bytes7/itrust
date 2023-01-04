import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/domain/domain.dart';
import '../domain.dart';

part 'user_chat_info.freezed.dart';

part 'user_chat_info.g.dart';

@freezed
class UserChatInfo with _$UserChatInfo {
  const factory UserChatInfo({
    required User user,
    required ChatRole role,
  }) = _UserChatInfo;

  factory UserChatInfo.fromJson(Map<String, Object?> json) =>
      _$UserChatInfoFromJson(json);
}
