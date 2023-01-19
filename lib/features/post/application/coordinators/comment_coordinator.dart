abstract class CommentCoordinator {
  void onBackButtonPressed();

  void onCommentPressed({
    required String postID,
    required String commentID,
  });

  void onCommentReplyButtonPressed({
    required String postID,
    required String commentID,
  });
}
