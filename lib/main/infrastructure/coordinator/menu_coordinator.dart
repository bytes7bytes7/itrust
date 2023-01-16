import 'package:injectable/injectable.dart';

import '../../../feature/menu/application/coordinator/menu_coordinator.dart';
import '../router/router.dart';
import 'core.dart';

@Singleton(as: MenuCoordinator)
class ProdMenuCoordinator extends Coordinator implements MenuCoordinator {
  ProdMenuCoordinator({
    required super.navigatorKey,
  });

  @override
  void onSettingsButtonPressed() {
    const SettingsRoute().push(context);
  }
}
