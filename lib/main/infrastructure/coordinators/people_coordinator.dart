import 'package:injectable/injectable.dart';

import '../../../features/people/application/coordinators/people_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: PeopleCoordinator)
class ProdPeopleCoordinator extends Coordinator implements PeopleCoordinator {
  ProdPeopleCoordinator({required super.goRouter});

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
