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

class FeedRoute extends CosyRoute {
  const FeedRoute();

  @override
  GoRoute get route => _AppRoutes.feed;
}

class ChatsRoute extends CosyRoute {
  const ChatsRoute();

  @override
  GoRoute get route => _AppRoutes.chats;
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
