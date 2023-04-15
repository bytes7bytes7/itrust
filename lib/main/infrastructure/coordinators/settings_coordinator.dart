import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: SettingsCoordinator)
class ProdSettingsCoordinator extends Coordinator
    implements SettingsCoordinator {
  ProdSettingsCoordinator({
    required super.goRouter,
  });

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const FeedRoute().go(goRouter);
    }
  }

  @override
  void onAccountButtonPressed() {
    const AccountSettingsRoute().push(goRouter);
  }
}
