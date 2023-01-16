import 'package:injectable/injectable.dart';

import '../../../feature/auth/application/coordinator/rules_coordinator.dart';
import '../router/router.dart';
import 'core.dart';

@Singleton(as: RulesCoordinator)
class ProdRulesCoordinator extends Coordinator implements RulesCoordinator {
  ProdRulesCoordinator({
    required super.goRouter,
  });

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      goRouter.go(const AuthRoute().route.path);
    }
  }
}
