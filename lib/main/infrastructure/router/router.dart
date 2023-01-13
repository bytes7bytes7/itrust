import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../feature/auth/application/store/auth/auth_store.dart';
import '../../../feature/auth/presentation/screen/screen.dart';
import '../../../feature/chat_list/presentation/screen/screen.dart';
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

final _getIt = GetIt.instance;

final _rootKey = NavigatorKey();

final _router = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: const AuthRoute().route.path,
  errorPageBuilder: const NotFoundRoute().route.pageBuilder,
  routes: [
    const NotFoundRoute().route,
    const AuthRoute().route,
    const HomeRoute().route,
    const SettingsRoute().route,
  ],
  refreshListenable: StreamToChangeNotifierAdapter(
    _getIt.get<AuthStore>().onLoggedInChanged,
  ),
  redirect: (BuildContext context, GoRouterState state) {
    final authStore = _getIt.get<AuthStore>();

    final isLoggedIn = authStore.isLoggedIn ?? false;
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

void initRouter() {
  _getIt
    ..registerSingleton<NavigatorKey>(_rootKey)
    ..registerSingleton<GoRouter>(_router);
}
