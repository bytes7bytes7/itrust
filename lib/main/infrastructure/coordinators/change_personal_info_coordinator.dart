import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: ChangePersonalInfoCoordinator)
class ProdChangePersonalInfoCoordinator extends Coordinator
    implements ChangePersonalInfoCoordinator {
  ProdChangePersonalInfoCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const AccountSettingsRoute().go(goRouter);
    }
  }
}
