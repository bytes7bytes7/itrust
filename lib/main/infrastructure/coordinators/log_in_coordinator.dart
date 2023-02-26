import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: LogInCoordinator)
class ProdLogInCoordinator extends Coordinator implements LogInCoordinator {
  ProdLogInCoordinator({
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
          location == const LogInRoute().namedLocation(goRouter) ||
              location == '/';

      if (!isLoggedIn && !isLoggingIn) {
        return const LogInRoute().go(goRouter);
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
  void onGoToRegisterButtonPressed() {
    const RegisterRoute().pushReplacement(goRouter);
  }
}
