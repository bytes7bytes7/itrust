import 'package:injectable/injectable.dart';

import '../../../features/settings/application/coordinators/devices_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: DevicesCoordinator)
class ProdDevicesCoordinator extends Coordinator implements DevicesCoordinator {
  ProdDevicesCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const AccountSettingsRoute().go(goRouter);
    }
  }
}
