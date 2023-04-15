abstract class UserWallCoordinator {
  void onBackButtonPressed();

  void onFriendsPressed({required String userID});

  void onSubscribersPressed({required String userID});

  void onPostPressed({required String postID});

  void onCommentButtonPressed({required String postID});
}
