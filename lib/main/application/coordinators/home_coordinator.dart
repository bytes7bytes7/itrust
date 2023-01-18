abstract class HomeCoordinator {
  Stream<int> get onSelectedIndexChanged;

  void init();

  void dispose();

  void onTabSelected(int index);
}
