import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

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
      goRouter.goNamed(const AuthRoute().route.name!);
    }
  }
}
