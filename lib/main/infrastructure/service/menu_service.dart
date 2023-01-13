import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../../../feature/menu/domain/service/menu_service.dart';
import '../router/router.dart';

final _getIt = GetIt.instance;
final _logger = Logger('$MenuService');

@Singleton(as: MenuService)
class ProdMenuService implements MenuService {
  @override
  void onMoreBtnPressed() {
    const SettingsRoute().push(_context);
  }

  late final _navigatorKey = _getIt.get<NavigatorKey>();

  BuildContext get _context {
    final ctx = _navigatorKey.currentContext;

    if (ctx == null) {
      _logger.shout('Context is null');
    }

    return ctx!;
  }
}
