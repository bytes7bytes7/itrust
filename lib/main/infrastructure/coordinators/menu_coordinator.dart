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
}
