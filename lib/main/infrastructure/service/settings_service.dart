import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../../../feature/settings/domain/service/settings_service.dart';
import '../router/router.dart';

final _getIt = GetIt.instance;
final _logger = Logger('name$SettingsService');

@Singleton(as: SettingsService)
class ProdSettingsService implements SettingsService {
  late final _firebaseAuth = FirebaseAuth.instance;
  late final _navigatorKey = _getIt.get<NavigatorKey>();

  @override
  void onBackButtonPressed() {
    final router = _getIt.get<GoRouter>();

    if (router.canPop()) {
      router.pop();
    } else {
      const MenuRoute().go(_context);
    }
  }

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }

  BuildContext get _context {
    final ctx = _navigatorKey.currentContext;

    if (ctx == null) {
      _logger.shout('Context is null');
    }

    return ctx!;
  }
}
