import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../features/common/application/application.dart';
import '../../coordinators/home_coordinator.dart';

part 'home_store.g.dart';

const _defaultTabIndex = 0;

@injectable
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore extends SyncStore with Store {
  _HomeStore({
    required HomeCoordinator homeCoordinator,
  }) : _homeCoordinator = homeCoordinator {
    _currentIndexSub = homeCoordinator.onSelectedIndexChanged.listen((index) {
      _currentTabIndex = index;
    });
  }

  final HomeCoordinator _homeCoordinator;
  StreamSubscription? _currentIndexSub;

  @readonly
  int _currentTabIndex = _defaultTabIndex;

  @disposeMethod
  void dispose() {
    _currentIndexSub?.cancel();
  }

  @action
  void onTabSelect(int index) {
    if (_currentTabIndex != index) {
      _homeCoordinator.onTabSelected(index: index);
    }
  }

  @action
  void reset() {
    if (_currentTabIndex != _defaultTabIndex) {
      _homeCoordinator.onTabSelected(index: _defaultTabIndex);
    }
  }
}
