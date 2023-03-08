import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: AccountSettingsCoordinator)
class ProdAccountSettingsCoordinator extends Coordinator
    implements AccountSettingsCoordinator {
  ProdAccountSettingsCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const SettingsRoute().go(goRouter);
    }
  }

  @override
  void onPersonalInfoPressed() {
    const ChangePersonalInfoRoute().push(goRouter);
  }
}
