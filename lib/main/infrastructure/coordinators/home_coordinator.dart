import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../application/coordinators/home_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: HomeCoordinator)
class ProdHomeCoordinator extends Coordinator implements HomeCoordinator {
  ProdHomeCoordinator({required super.goRouter});

  var _currentIndex = 0;
  final _currentIndexController = BehaviorSubject<int>();

  final _routes = const [
    FeedRoute(),
    ChatListRoute(),
    MenuRoute(),
  ];

  @override
  Stream<int> get onSelectedIndexChanged => _currentIndexController.stream;

  @override
  @postConstruct
  void init() {
    goRouter.addListener(_onLocationChanged);
  }

  @override
  @disposeMethod
  void dispose() {
    goRouter.removeListener(_onLocationChanged);
    _currentIndexController.close();
  }

  @override
  void onTabSelected({required int index}) {
    _routes[index].go(goRouter);

    _changeCurrentIndex(index);
  }

  // sync tab and selected icon in tab bar
  void _onLocationChanged() {
    final currentLocation = goRouter.location;
    final proposedPath = _routes[_currentIndex].route.path;

    if (!currentLocation.contains(proposedPath)) {
      final index = _routes.indexWhere(
        (route) => currentLocation.contains(route.route.path),
      );

      if (index != -1) {
        _changeCurrentIndex(index);
      }
    }
  }

  void _changeCurrentIndex(index) {
    _currentIndex = index;
    _currentIndexController.add(index);
  }
}
