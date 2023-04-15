import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: FeedCoordinator)
class ProdFeedCoordinator extends Coordinator implements FeedCoordinator {
  ProdFeedCoordinator({required super.goRouter});

  @override
  void onPostPressed({required String postID}) {
    PostRoute(id: postID).push(goRouter);
  }

  @override
  void onCommentButtonPressed({required String postID}) {
    PostRoute(id: postID).push(goRouter);
  }

  @override
  void onAuthorPressed({required String userID}) {
    UserWallRoute(userID: userID).push(goRouter);
  }
}
