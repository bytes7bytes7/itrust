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

      final isLoggingIn =
          location == const AuthRoute().namedLocation(goRouter) ||
              location == const RulesRoute().namedLocation(goRouter) ||
              location == '/';

      if (!isLoggedIn && !isLoggingIn) {
        return const AuthRoute().go(goRouter);
      }

      if (isLoggedIn && isLoggingIn) {
        return const FeedRoute().go(goRouter);
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
    const RulesRoute().push(goRouter);
  }
}
