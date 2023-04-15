import 'package:injectable/injectable.dart';

import '../../../features/friends/application/coordinators/friends_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: FriendsCoordinator)
class ProdFriendsCoordinator extends Coordinator implements FriendsCoordinator {
  ProdFriendsCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const FeedRoute().go(goRouter);
    }
  }

  @override
  void onUserPressed(String userID) {
    UserWallRoute(userID: userID).push(goRouter);
  }
}
