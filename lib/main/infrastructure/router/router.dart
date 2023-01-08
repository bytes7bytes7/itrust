import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../feature/chat/presentation/screen/screen.dart';
import '../../../feature/chat_list/presentation/screen/screen.dart';
import '../../../feature/common/domain/domain.dart';
import '../../../feature/feed/presentation/screen/screen.dart';
import '../../../feature/menu/presentation/screen/screen.dart';
import '../../presentation/screen/screen.dart';

part 'transition.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>();

enum AppRoutes {
  feed('/feed'),
  chatList('/chat'),
  menu('/menu'),
  chat('/chat/:id');

  const AppRoutes(this.path);

  final String path;
}

final router = GoRouter(
  initialLocation: AppRoutes.feed.path,
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
          path: AppRoutes.feed.path,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: FeedScreen(),
            );
          },
        ),
        GoRoute(
          path: AppRoutes.chatList.path,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: ChatListScreen(),
            );
          },
        ),
        GoRoute(
          path: AppRoutes.menu.path,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: MenuScreen(),
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.chat.path,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          transitionsBuilder: leftward,
          child: ChatScreen(
            chatID: ChatID(state.params['id'] as String),
          ),
        );
      },
    ),
  ],
);
