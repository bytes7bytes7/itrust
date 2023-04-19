import 'package:mapster/mapster.dart';

import '../../../common/application/providers/beautified_number_provider.dart';
import '../../../common/application/view_models/view_models.dart';
import '../../domain/domain.dart';

class UserInfoToUserInfoVMMapper extends OneSourceMapper<UserInfo, UserInfoVM> {
  UserInfoToUserInfoVMMapper(
    super.input, {
    required BeautifiedNumberProvider beautifiedNumberProvider,
    required Mapster mapster,
  })  : _beautifiedNumberProvider = beautifiedNumberProvider,
        _mapster = mapster;

  final BeautifiedNumberProvider _beautifiedNumberProvider;
  final Mapster _mapster;

  @override
  UserInfoVM map() {
    final userInfo = _userInfo;

    if (userInfo is EndUserInfo) {
      return EndUserInfoVM(
        user: _mapster.map1(userInfo.user, To<EndUserVM>()),
        friendsAmountWithoutMe: _beautifiedNumberProvider
            .beautify(userInfo.friendsAmount - (userInfo.amIFriend ? 1 : 0)),
        friendsAmountWithMe: _beautifiedNumberProvider
            .beautify(userInfo.friendsAmount + (userInfo.amIFriend ? 0 : 1)),
        postsAmount: _beautifiedNumberProvider.beautify(userInfo.postsAmount),
        subscribersAmountWithoutMe: _beautifiedNumberProvider.beautify(
          userInfo.subscribersAmount - (userInfo.amISubscriber ? 1 : 0),
        ),
        subscribersAmountWithMe: _beautifiedNumberProvider.beautify(
          userInfo.subscribersAmount + (userInfo.amISubscriber ? 0 : 1),
        ),
        amIFriend: userInfo.amIFriend,
        amISubscriber: userInfo.amISubscriber,
        areTheySubscribedToMe: userInfo.areTheySubscribedToMe,
        didISentFriendBid: userInfo.didISentFriendBid,
        haveIFriendBidFromThisUser: userInfo.haveIFriendBidFromThisUser,
      );
    } else if (userInfo is StaffUserInfo) {
      return StaffUserInfoVM(
        user: _mapster.map1(userInfo.user, To<StaffUserVM>()),
      );
    }

    throw Exception('Unknown type of UserInfo');
  }

  UserInfo get _userInfo => source;
}
