import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../../../feature/auth/application/coordinator/auth_coordinator.dart';
import '../../../feature/common/common.dart';
import '../infrastructure.dart';

final _logger = Logger('$AuthCoordinator');

@Singleton(as: AuthCoordinator)
class ProdAuthCoordinator implements AuthCoordinator {
  ProdAuthCoordinator({
    required NavigatorKey navigatorKey,
    required AuthService authService,
  })  : _navigatorKey = navigatorKey,
        _authService = authService;

  final NavigatorKey _navigatorKey;
  final AuthService _authService;
  StreamSubscription? _authSub;
  bool _isInitialized = false;

  @override
  @postConstruct
  void init() {
    _authSub = _authService.onIsLoggedInChanged.listen((isLoggedIn) {
      final context = _context;
      if (context == null) {
        return;
      }

      final router = GoRouter.of(context);

      final location = router.location;

      final isLoggingIn = location ==
              context.namedLocation(const AuthRoute().route.name!) ||
          location == context.namedLocation(const RulesRoute().route.name!);

      _isInitialized = true;

      if (!isLoggedIn && !isLoggingIn) {
        return const AuthRoute().go(context);
      }

      if (isLoggedIn && isLoggingIn) {
        return const FeedRoute().go(context);
      }
    });
  }

  @override
  @disposeMethod
  void dispose() {
    _authSub?.cancel();
  }

  @override
  void onRulesButtonPressed() {
    const RulesRoute().push(_context!);
  }

  BuildContext? get _context {
    final ctx = _navigatorKey.currentContext;

    if (ctx == null && _isInitialized) {
      _logger.shout('Context is null');
    }

    return ctx;
  }
}
