abstract class PeopleCoordinator {
  Stream<int> get onSelectedIndexChanged;

  void init();

  void dispose();

  void onTabSelected({required int index});

  void onBackButtonPressed();

  void onUserPressed({required String userID});
}
