import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../../domain/service/home_service.dart';
import '../router/router.dart';

final _logger = Logger('$HomeService');

@Singleton(as: HomeService)
class ProdHomeService implements HomeService {
  ProdHomeService({
    required NavigatorKey navigatorKey,
  }) : _navigatorKey = navigatorKey;
  final NavigatorKey _navigatorKey;

  @override
  List<IconData> get tabIcons => _tabs.map((e) => e.key).toList();

  final _tabs = const [
    MapEntry(
      Icons.home_outlined,
      FeedRoute(),
    ),
    MapEntry(
      Icons.mode_comment_outlined,
      ChatsRoute(),
    ),
    MapEntry(
      Icons.menu,
      MenuRoute(),
    ),
  ];

  @override
  void setTab(int index) {
    _tabs[index].value.go(_context);
  }

  BuildContext get _context {
    final ctx = _navigatorKey.currentContext;

    if (ctx == null) {
      _logger.shout('Context is null');
    }

    return ctx!;
  }
}
