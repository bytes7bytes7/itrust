import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/common.dart';

part 'user_info.freezed.dart';

part 'user_info.g.dart';

// TODO: finish
@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo.end({
    required UserID id,
  }) = EndUserInfo;

  const factory UserInfo.staff({
    required UserID id,
  }) = StaffUserInfo;

  factory UserInfo.fromJson(JsonMap json) => _$UserInfoFromJson(json);
}
