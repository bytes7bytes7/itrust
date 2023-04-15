import 'package:injectable/injectable.dart';

import '../../../features/user_wall/application/coordinators/user_wall_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: UserWallCoordinator)
class ProdUserWallCoordinator extends Coordinator
    implements UserWallCoordinator {
  ProdUserWallCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const FeedRoute().go(goRouter);
    }
  }

  @override
  void onFriendsPressed(String userID) {
    FriendsRoute(userID: userID).push(goRouter);
  }

  @override
  void onSubscribersPressed(String userID) {
    // TODO: implement onSubscribersPressed
  }

  @override
  void onPostPressed(String postID) {
    PostRoute(id: postID).go(goRouter);
  }

  @override
  void onCommentButtonPressed(String postID) {
    PostRoute(id: postID).go(goRouter);
  }
}
