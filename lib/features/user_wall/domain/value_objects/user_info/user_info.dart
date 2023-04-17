import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/entities/entities.dart';

part 'user_info.freezed.dart';

part 'user_info.g.dart';

@Freezed(
  unionKey: 'type',
)
class UserInfo with _$UserInfo {
  const factory UserInfo.end({
    required EndUser user,
    required int friendsAmount,
    required int subscribersAmount,
    required int postsAmount,
    required bool amIFriend,
    required bool amISubscriber,
    required bool areTheySubscribedToMe,
    required bool didISentFriendBid,
    required bool haveIFriendBidFromThisUser,
  }) = EndUserInfo;

  const factory UserInfo.staff({
    required StaffUser user,
  }) = StaffUserInfo;

  factory UserInfo.fromJson(JsonMap json) => _$UserInfoFromJson(json);
}
