import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: LogInCoordinator)
class ProdLogInCoordinator extends Coordinator implements LogInCoordinator {
  ProdLogInCoordinator({
    required super.goRouter,
    required AuthStatusProvider authStatusProvider,
  }) : _authStatusProvider = authStatusProvider;

  final AuthStatusProvider _authStatusProvider;
  StreamSubscription? _authSub;

  @override
  @postConstruct
  void init() {
    _authSub = _authStatusProvider.onIsLoggedInChanged.listen((isLoggedIn) {
      final location = goRouter.location;

      final isLoggingIn =
          location == const LogInRoute().namedLocation(goRouter) ||
              location == '/';

      final isRegistering =
          location == const RegisterRoute().namedLocation(goRouter);

      if (!isLoggedIn && !isLoggingIn && !isRegistering) {
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
