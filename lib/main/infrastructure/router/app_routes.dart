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
    name: 'notFound',
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

  static final logIn = GoRoute(
    path: '/log_in',
    name: 'logIn',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const LogInScreen(),
      );
    },
  );

  static final register = GoRoute(
    path: '/register',
    name: 'register',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const RegisterScreen(),
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
    path: 'post:postID',
    name: 'post',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      final id = state.params['postID']!;

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
    routes: [
      comment,
    ],
  );

  static final comment = GoRoute(
    path: 'comment:commentID',
    name: 'comment',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      final commentID = state.params['commentID']!;
      final postID = state.params['postID']!;

      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: CommentScreen(
          commentID: commentID,
          postID: postID,
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
    routes: [
      people,
      userWall,
    ],
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
    routes: [
      accountSettings,
    ],
  );

  static final accountSettings = GoRoute(
    path: 'account',
    name: 'account_settings',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const AccountSettingsScreen(),
      );
    },
    routes: [
      changePersonalInfo,
      devices,
    ],
  );

  static final changePersonalInfo = GoRoute(
    path: 'personal_info',
    name: 'change_personal_info',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const ChangePersonalInfoScreen(),
      );
    },
  );

  static final devices = GoRoute(
    path: 'devices',
    name: 'devices',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const DevicesScreen(),
      );
    },
  );

  static final people = GoRoute(
    path: 'people:userID',
    name: 'people',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      final userID = state.params['userID']!;

      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: PeopleScreen(
          userID: userID,
        ),
      );
    },
  );

  static final userWall = GoRoute(
    path: 'user:userID',
    name: 'user_wall',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      final userID = state.params['userID']!;

      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: UserWallScreen(
          userID: userID,
        ),
      );
    },
    routes: [
      friends,
      subscribers,
    ],
  );

  static final friends = GoRoute(
    path: 'friends',
    name: 'friends',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      final userID = state.params['userID']!;

      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: FriendsScreen(
          userID: userID,
        ),
      );
    },
  );

  static final subscribers = GoRoute(
    path: 'subscribers',
    name: 'subscribers',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      final userID = state.params['userID']!;

      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: SubscribersScreen(
          userID: userID,
        ),
      );
    },
  );
}
