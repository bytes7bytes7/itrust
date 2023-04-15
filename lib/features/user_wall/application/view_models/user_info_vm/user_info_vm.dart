import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/application/view_models/user_vm/user_vm.dart';

part 'user_info_vm.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
class UserInfoVM with _$UserInfoVM {
  const factory UserInfoVM.end({
    required EndUserVM user,
    required String friendsAmountWithoutMe,
    required String friendsAmountWithMe,
    required String postsAmount,
    required String subscribersAmountWithoutMe,
    required String subscribersAmountWithMe,
    required bool amIFriend,
    required bool amISubscriber,
    required bool didISentFriendBid,
  }) = EndUserInfoVM;

  const factory UserInfoVM.staff({
    required StaffUserVM user,
  }) = StaffUserInfoVM;
}
