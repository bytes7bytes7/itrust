import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: CommentCoordinator)
class ProdCommentCoordinator extends Coordinator implements CommentCoordinator {
  const ProdCommentCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const FeedRoute().go(goRouter);
    }
  }

  @override
  void onCommentPressed({
    required String postID,
    required String commentID,
  }) {
    CommentRoute(
      id: commentID,
      postID: postID,
    ).push(goRouter);
  }

  @override
  void onCommentReplyButtonPressed({
    required String postID,
    required String commentID,
  }) {
    CommentRoute(
      id: commentID,
      postID: postID,
    ).push(goRouter);
  }
}
