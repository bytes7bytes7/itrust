import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/service/home_service.dart';

part 'home_store.g.dart';

@singleton
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  _HomeStore({
    required HomeService homeService,
  }) : _homeService = homeService;

  final HomeService _homeService;

  @readonly
  int _currentTabIndex = 0;

  List<IconData> get tabIcons => _homeService.tabIcons;

  @action
  void onTabSelect(int index) {
    if (index != _currentTabIndex) {
      _homeService.setTab(index);

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
