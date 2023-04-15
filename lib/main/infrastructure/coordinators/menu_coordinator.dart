import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: MenuCoordinator)
class ProdMenuCoordinator extends Coordinator implements MenuCoordinator {
  ProdMenuCoordinator({
    required super.goRouter,
  });

  @override
  void onSettingsButtonPressed() {
    const SettingsRoute().push(goRouter);
  }

  @override
  void onMyProfileButtonPressed({required String userID}) {
    UserWallRoute(userID: userID).push(goRouter);
  }

  @override
  void onFriendsButtonPressed({required String userID}) {
    FriendsRoute(userID: userID).push(goRouter);
  }
}
