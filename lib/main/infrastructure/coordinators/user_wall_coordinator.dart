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
  void onFriendsPressed({required String userID}) {
    FriendsRoute(userID: userID).push(goRouter);
  }

  @override
  void onSubscribersPressed({required String userID}) {
    // TODO: implement onSubscribersPressed
  }

  @override
  void onPostPressed({required String postID}) {
    PostRoute(id: postID).push(goRouter);
  }

  @override
  void onCommentButtonPressed({required String postID}) {
    PostRoute(id: postID).push(goRouter);
  }

  @override
  void onMessageButtonPressed({required String userID}) {
    // TODO: implement onMessageButtonPressed
  }
}
