import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../feature/auth/application/coordinator/auth_coordinator.dart';
import '../../../feature/common/common.dart';
import '../infrastructure.dart';
import 'core.dart';

@Singleton(as: AuthCoordinator)
class ProdAuthCoordinator extends Coordinator implements AuthCoordinator {
  ProdAuthCoordinator({
    required super.goRouter,
    required AuthService authService,
  }) : _authService = authService;

  final AuthService _authService;
  StreamSubscription? _authSub;

  @override
  @postConstruct
  void init() {
    _authSub = _authService.onIsLoggedInChanged.listen((isLoggedIn) {
      final location = goRouter.location;

      final isLoggingIn = location ==
              goRouter.namedLocation(const AuthRoute().route.name!) ||
          location == goRouter.namedLocation(const RulesRoute().route.name!) ||
          location == '/';

      if (!isLoggedIn && !isLoggingIn) {
        return goRouter.push(const AuthRoute().route.path);
      }

      if (isLoggedIn && isLoggingIn) {
        return goRouter.go(const FeedRoute().route.path);
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
    goRouter.push(const RulesRoute().route.path);
  }
}
