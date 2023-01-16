import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../../feature/auth/application/coordinator/auth_coordinator.dart';
import '../../../feature/common/common.dart';
import '../infrastructure.dart';
import 'core.dart';

@Singleton(as: AuthCoordinator)
class ProdAuthCoordinator extends Coordinator implements AuthCoordinator {
  ProdAuthCoordinator({
    required super.navigatorKey,
    required AuthService authService,
  }) : _authService = authService;

  final AuthService _authService;
  StreamSubscription? _authSub;

  @override
  @postConstruct
  void init() {
    _authSub = _authService.onIsLoggedInChanged.listen((isLoggedIn) {
      final context = contextOrNull;

      // Context can be null on app start
      if (context == null) {
        return;
      }

      final location = goRouter.location;

      final isLoggingIn =
          location == context.namedLocation(const AuthRoute().route.name!) ||
              location == context.namedLocation(const RulesRoute().route.name!);

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
    const RulesRoute().push(context);
  }
}
