import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../../feature/auth/presentation/screen/screen.dart';
import '../../../feature/chat_list/presentation/screen/screen.dart';
import '../../../feature/common/domain/service/auth_service.dart';
import '../../../feature/feed/presentation/screen/screen.dart';
import '../../../feature/menu/presentation/screen/screen.dart';
import '../../../feature/settings/presentation/screen/screen.dart';
import '../../../util/stream_to_change_notifier_adapter.dart';
import '../../presentation/screen/screen.dart';

part 'transition.dart';

part 'routes.dart';

part 'cosy_route.dart';

part 'app_routes.dart';

typedef NavigatorKey = GlobalKey<NavigatorState>;

@module
abstract class RouterModule {
  @singleton
  NavigatorKey get rootKey => NavigatorKey();

  @singleton
  GoRouter router(
    NavigatorKey key,
    AuthService authService,
  ) {
    return GoRouter(
      navigatorKey: key,
      initialLocation: const AuthRoute().route.path,
      errorPageBuilder: const NotFoundRoute().route.pageBuilder,
      routes: [
        const NotFoundRoute().route,
        const AuthRoute().route,
        const HomeRoute().route,
        const SettingsRoute().route,
      ],
      refreshListenable: StreamToChangeNotifierAdapter(
        authService.onIsLoggedInChanged,
      ),
      redirect: (BuildContext context, GoRouterState state) {
        final isLoggedIn = authService.isLoggedIn;
        final isLoggingIn = state.location == const AuthRoute().route.path;

        if (!isLoggedIn && !isLoggingIn) {
          return const AuthRoute().route.path;
        }

        if (isLoggedIn && isLoggingIn) {
          return const FeedRoute().route.path;
        }

        return null;
      },
    );
  }
}
