import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../../../feature/auth/application/coordinator/rules_coordinator.dart';
import '../router/router.dart';

final _logger = Logger('$RulesCoordinator');

@Singleton(as: RulesCoordinator)
class ProdRulesCoordinator implements RulesCoordinator {
  ProdRulesCoordinator({
    required NavigatorKey navigatorKey,
  }) : _navigatorKey = navigatorKey;

  final NavigatorKey _navigatorKey;

  @override
  void onBackButtonPressed() {
    _router.pop();
  }

  GoRouter get _router => GoRouter.of(_context);

  BuildContext get _context {
    final ctx = _navigatorKey.currentContext;

    if (ctx == null) {
      _logger.shout('Context is null');
    }

    return ctx!;
  }
}
