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
    routes: [
      createMonologue,
      createDialogue,
      createGroup,
      chat,
    ],
  );

  static final createMonologue = GoRoute(
    path: 'create_monologue',
    name: 'create_monologue',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const CreateMonologueScreen(),
      );
    },
  );

  static final createDialogue = GoRoute(
    path: 'create_dialogue',
    name: 'create_dialogue',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const CreateDialogueScreen(),
      );
    },
  );

  static final createGroup = GoRoute(
    path: 'create_group',
    name: 'create_group',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const CreateGroupScreen(),
      );
    },
    routes: [
      createGroupInfo,
    ],
  );

  static final createGroupInfo = GoRoute(
    path: 'create_group_info',
    name: 'create_group_info',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const CreateGroupInfoScreen(),
      );
    },
  );


  static final chat = GoRoute(
    path: 'chat:chatID',
    name: 'chat',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      final chatID = state.params['chatID']!;

      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: ChatScreen(
          chatID: chatID,
        ),
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
      friendBids,
    ],
  );

  static final home = ShellRoute(
    navigatorKey: _homeNavigatorKey,
    builder: (context, state, child) {
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
    path: 'people',
    name: 'people',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const PeopleScreen(),
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

  static final friendBids = GoRoute(
    path: 'friend_bids',
    name: 'friend_bids',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const FriendBidsScreen(),
      );
    },
  );
}
