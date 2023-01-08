import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

@singleton
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @readonly
  int _currentTabIndex = 0;

  @action
  void onTabSelect(int index) {
    if (index != _currentTabIndex) {
      // TODO: implement
      // homeService.setTab(index);

      _currentTabIndex = index;
    }
  }

  @action
  void checkOrSetTab(int index) {
    if (index != _currentTabIndex) {
      _currentTabIndex = index;
    }
  }
}
