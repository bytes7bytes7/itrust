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

class AuthRoute extends CosyRoute {
  const AuthRoute();

  @override
  GoRoute get route => _AppRoutes.auth;
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
