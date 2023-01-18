import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

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
        return goRouter.goNamed(const AuthRoute().route.name!);
      }

      if (isLoggedIn && isLoggingIn) {
        return goRouter.goNamed(const FeedRoute().route.name!);
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
    goRouter.pushNamed(const RulesRoute().route.name!);
  }
}
