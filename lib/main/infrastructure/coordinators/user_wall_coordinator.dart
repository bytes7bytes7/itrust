import 'package:injectable/injectable.dart';

import '../../../features/user_wall/application/coordinators/user_wall_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: UserWallCoordinator)
class ProdUserWallCoordinator extends Coordinator
    implements UserWallCoordinator {
  ProdUserWallCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const FeedRoute().go(goRouter);
    }
  }
}
