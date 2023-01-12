import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../../domain/service/home_service.dart';
import '../router/router.dart';

final _getIt = GetIt.instance;
final _logger = Logger('$HomeService');

@Singleton(as: HomeService)
class ProdHomeService implements HomeService {
  late final _navigatorKey = _getIt.get<NavigatorKey>();

  BuildContext get _context {
    final ctx = _navigatorKey.currentState?.context;

    if (ctx == null) {
      _logger.shout('Context is null');
    }

    return ctx!;
  }

  @override
  List<IconData> get tabIcons => _tabs.map((e) => e.key).toList();

  final _tabs = [
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
}
