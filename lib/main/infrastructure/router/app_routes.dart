part of 'router.dart';

final _homeNavigatorKey = NavigatorKey();

String _getName(GoRouterState state) => state.name ?? state.subloc;

Map<String, Object?> _getArgs(GoRouterState state) => {
      'params': state.params,
      'queryParams': state.queryParams,
    };

// ignore: avoid_classes_with_only_static_members
class _AppRoutes {
  const _AppRoutes._();

  static final notFound = GoRoute(
    path: '/not_found',
    name: 'not_found',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const NotFoundScreen(),
      );
    },
  );

  static final auth = GoRoute(
    path: '/auth',
    name: 'auth',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const AuthScreen(),
      );
    },
    routes: [
      rules,
    ],
  );

  static final rules = GoRoute(
    path: 'rules',
    name: 'rules',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const RulesScreen(),
      );
    },
  );

  static final feed = GoRoute(
    path: '/feed',
    name: 'feed',
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const FeedScreen(),
      );
    },
    routes: [
      post,
    ],
  );

  static final post = GoRoute(
    path: 'post:id',
    name: 'post',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      final id = state.params['id']!;

      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: PostScreen(
          postID: id,
        ),
      );
    },
  );

  static final chatList = GoRoute(
    path: '/chats',
    name: 'chats',
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const ChatListScreen(),
      );
    },
  );

  static final menu = GoRoute(
    path: '/menu',
    name: 'menu',
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const MenuScreen(),
      );
    },
  );

  static final home = ShellRoute(
    navigatorKey: _homeNavigatorKey,
    builder: (context, st1ate, child) {
      return HomeScreen(
        body: child,
      );
    },
    routes: [
      feed,
      chatList,
      menu,
    ],
  );

  static final settings = GoRoute(
    path: '/settings',
    name: 'settings',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const SettingsScreen(),
      );
    },
  );
}
