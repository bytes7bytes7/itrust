import 'package:injectable/injectable.dart';

import '../../../feature/settings/application/coordinator/settings_coordinator.dart';
import '../router/router.dart';
import 'core.dart';

@Singleton(as: SettingsCoordinator)
class ProdSettingsCoordinator extends Coordinator
    implements SettingsCoordinator {
  ProdSettingsCoordinator({
    required super.navigatorKey,
  });

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const MenuRoute().go(context);
    }
  }
}
