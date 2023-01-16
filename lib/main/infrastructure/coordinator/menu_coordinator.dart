import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../../../feature/menu/application/coordinator/menu_coordinator.dart';
import '../router/router.dart';

final _logger = Logger('$MenuCoordinator');

@Singleton(as: MenuCoordinator)
class ProdMenuCoordinator implements MenuCoordinator {
  ProdMenuCoordinator({
    required NavigatorKey navigatorKey,
  }) : _navigatorKey = navigatorKey;

  final NavigatorKey _navigatorKey;

  @override
  void onSettingsButtonPressed() {
    const SettingsRoute().push(_context);
  }

  BuildContext get _context {
    final ctx = _navigatorKey.currentContext;

    if (ctx == null) {
      _logger.shout('Context is null');
    }

    return ctx!;
  }
}
