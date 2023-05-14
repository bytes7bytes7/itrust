import 'package:injectable/injectable.dart';

import '../../../features/common/domain/value_objects/chat_id/chat_id.dart';
import '../../../features/common/domain/value_objects/user_id/user_id.dart';
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
    SubscribersRoute(userID: userID).push(goRouter);
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
  void onMessageButtonPressed({
    required String firstUserID,
    required String secondUserID,
  }) {
    final chatID = ChatID.createDialogue(
      UserID.fromString(firstUserID),
      UserID.fromString(secondUserID),
    );

    ChatRoute(chatID: chatID.str).push(goRouter);
  }
}
