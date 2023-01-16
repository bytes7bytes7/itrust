import 'package:injectable/injectable.dart';

import '../../../feature/settings/application/coordinator/settings_coordinator.dart';
import '../router/router.dart';
import 'core.dart';

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
      goRouter.go(const MenuRoute().route.path);
    }
  }
}
