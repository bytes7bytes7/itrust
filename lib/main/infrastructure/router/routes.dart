part of 'router.dart';

// Only for [ShellRoute]
class HomeRoute {
  const HomeRoute();

  ShellRoute get route => _AppRoutes.home;
}

class NotFoundRoute extends CosyRoute {
  const NotFoundRoute();

  @override
  GoRoute get route => _AppRoutes.notFound;
}

class LogInRoute extends CosyRoute {
  const LogInRoute();

  @override
  GoRoute get route => _AppRoutes.logIn;
}

class RegisterRoute extends CosyRoute {
  const RegisterRoute();

  @override
  GoRoute get route => _AppRoutes.register;
}

class RulesRoute extends CosyRoute {
  const RulesRoute();

  @override
  GoRoute get route => _AppRoutes.rules;
}

class FeedRoute extends CosyRoute {
  const FeedRoute();

  @override
  GoRoute get route => _AppRoutes.feed;
}

class PostRoute extends CosyRoute {
  const PostRoute({
    required this.id,
  });

  final String id;

  @override
  Map<String, String> get params => {
        'postID': id,
      };

  @override
  GoRoute get route => _AppRoutes.post;
}

class CommentRoute extends CosyRoute {
  const CommentRoute({
    required this.id,
    required this.postID,
  });

  final String id;
  final String postID;

  @override
  Map<String, String> get params => {
        'postID': postID,
        'commentID': id,
      };

  @override
  GoRoute get route => _AppRoutes.comment;
}

class ChatListRoute extends CosyRoute {
  const ChatListRoute();

  @override
  GoRoute get route => _AppRoutes.chatList;
}

class MenuRoute extends CosyRoute {
  const MenuRoute();

  @override
  GoRoute get route => _AppRoutes.menu;
}

class SettingsRoute extends CosyRoute {
  const SettingsRoute();

  @override
  GoRoute get route => _AppRoutes.settings;
}

class AccountSettingsRoute extends CosyRoute {
  const AccountSettingsRoute();

  @override
  GoRoute get route => _AppRoutes.accountSettings;
}

class ChangePersonalInfoRoute extends CosyRoute {
  const ChangePersonalInfoRoute();

  @override
  GoRoute get route => _AppRoutes.changePersonalInfo;
}

class DevicesRoute extends CosyRoute {
  const DevicesRoute();

  @override
  GoRoute get route => _AppRoutes.devices;
}

class PeopleRoute extends CosyRoute {
  const PeopleRoute({
    required this.userID,
  });

  final String userID;

  @override
  Map<String, String> get params => {
        'userID': userID,
      };

  @override
  GoRoute get route => _AppRoutes.people;
}

class UserWallRoute extends CosyRoute {
  const UserWallRoute({
    required this.userID,
  });

  final String userID;

  @override
  Map<String, String> get params => {
        'userID': userID,
      };

  @override
  GoRoute get route => _AppRoutes.userWall;
}
