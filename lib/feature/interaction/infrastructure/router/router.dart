import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../chat_list/presentation/screen/screen.dart';
import '../../presentation/screen/screen.dart';

part 'transition.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/feed',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _homeNavigatorKey,
      builder: (context, st1ate, child) {
        return HomeScreen(
          body: child,
        );
      },
      routes: [
        GoRoute(
          path: '/feed',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: Scaffold(),
            );
          },
        ),
        GoRoute(
          path: '/chat',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: ChatListScreen(),
            );
          },
        ),
        GoRoute(
          path: '/menu',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: Scaffold(),
            );
          },
        ),
      ],
    ),
  ],
);
