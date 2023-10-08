import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../../../utils/typedef.dart';
import '../../presentation/screens/screens.dart';

part 'transition.dart';

part 'routes.dart';

part 'cosy_route.dart';

part 'app_routes.dart';

final _rootKey = NavigatorKey();

@module
abstract class RouterModule {
  @singleton
  NavigatorKey get rootKey => _rootKey;

  @singleton
  GoRouter router(
    NavigatorKey key,
  ) {
    return GoRouter(
      navigatorKey: key,
      initialLocation: const RegisterRoute().route.path,
      errorPageBuilder: const NotFoundRoute().route.pageBuilder,
      routes: [
        const NotFoundRoute().route,
        const LogInRoute().route,
        const RegisterRoute().route,
        const HomeRoute().route,
        const SettingsRoute().route,
      ],
    );
  }
}
