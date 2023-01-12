import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../feature/auth/presentation/screen/screen.dart';
import '../../../feature/chat_list/presentation/screen/screen.dart';
import '../../../feature/feed/presentation/screen/screen.dart';
import '../../../feature/menu/presentation/screen/screen.dart';
import '../../presentation/screen/screen.dart';

part 'transition.dart';

part 'routes.dart';

part 'cosy_route.dart';

part 'app_routes.dart';

typedef NavigatorKey = GlobalKey<NavigatorState>;

final _rootKey = NavigatorKey();

final _router = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: AuthRoute().route.path,
  errorPageBuilder: NotFoundRoute().route.pageBuilder,
  routes: [
    NotFoundRoute().route,
    AuthRoute().route,
    HomeRoute().route,
  ],
);

void initRouter() {
  GetIt.instance
    ..registerSingleton<NavigatorKey>(_rootKey)
    ..registerSingleton<GoRouter>(_router);
}
