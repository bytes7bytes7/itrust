import 'package:injectable/injectable.dart';

import '../../../features/friend_bids/application/coordinators/friend_bids_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: FriendBidsCoordinator)
class ProdFriendBidsCoordinator extends Coordinator
    implements FriendBidsCoordinator {
  ProdFriendBidsCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const FeedRoute().go(goRouter);
    }
  }

  @override
  void onUserAvatarPressed({required String userID}) {
    UserWallRoute(userID: userID).push(goRouter);
  }
}
