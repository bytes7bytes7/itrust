import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../features/people/application/coordinators/people_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: PeopleCoordinator)
class ProdPeopleCoordinator extends Coordinator implements PeopleCoordinator {
  ProdPeopleCoordinator({required super.goRouter});

  final _currentIndexController = BehaviorSubject<int>();

  @override
  Stream<int> get onSelectedIndexChanged => _currentIndexController.stream;

  @override
  @postConstruct
  void init() {}

  @override
  @disposeMethod
  void dispose() {
    _currentIndexController.close();
  }

  @override
  void onTabSelected({required int index}) {
    _currentIndexController.add(index);
  }

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const FeedRoute().go(goRouter);
    }
  }

  @override
  void onUserPressed({required String userID}) {
    UserWallRoute(userID: userID).push(goRouter);
  }
}
