import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/common.dart';

part 'user_info.freezed.dart';

part 'user_info.g.dart';

// TODO: finish
@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo.staff({
    required UserID id,
  }) = StaffUserInfo;

  const factory UserInfo.end({
    required UserID id,
  }) = EndUserInfo;

  factory UserInfo.fromJson(Map<String, Object?> json) =>
      _$UserInfoFromJson(json);
}
