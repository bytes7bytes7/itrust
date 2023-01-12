part of 'router.dart';

// Only for [ShellRoute]
class HomeRoute {
  final route = _AppRoutes.home;
}

class FeedRoute extends CosyRoute {
  @override
  final route = _AppRoutes.feed;
}

class ChatsRoute extends CosyRoute {
  @override
  final route = _AppRoutes.chats;
}

class MenuRoute extends CosyRoute {
  @override
  final route = _AppRoutes.menu;
}
