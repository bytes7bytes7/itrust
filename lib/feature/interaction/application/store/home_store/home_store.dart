import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../service/home_interaction_service.dart';

part 'home_store.g.dart';

@singleton
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  _HomeStore({
    required HomeInteractionService homeInteractionService,
  }) : _homeInteractionService = homeInteractionService;

  final HomeInteractionService _homeInteractionService;

  @readonly
  int _currentTabIndex = 0;

  @action
  void onTabSelect(int index) {
    if (index != _currentTabIndex) {
      _homeInteractionService.onTabChanged(index);

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
