abstract class UserWallCoordinator {
  void onBackButtonPressed();

  void onFriendsPressed(String userID);

  void onSubscribersPressed(String userID);

  void onPostPressed(String postID);

  void onCommentButtonPressed(String postID);
}
