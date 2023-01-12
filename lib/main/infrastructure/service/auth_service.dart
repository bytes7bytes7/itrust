import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../../../feature/auth/domain/service/auth_service.dart';
import '../../../feature/common/domain/domain.dart';
import '../router/router.dart';

final _getIt = GetIt.instance;
final _logger = Logger('$AuthService');

@Singleton(as: AuthService)
class ProdAuthService implements AuthService {
  late final _firebaseAuth = FirebaseAuth.instance;

  @override
  Stream<EndUser?> get users => _firebaseAuth.authStateChanges().map(
        (event) {
          if (event == null) {
            return null;
          }

          return EndUser(
            id: UserID(event.uid),
            email: event.email,
            avatarUrls: const [],
            online: true,
          );
        },
      );

  @override
  Future<void> authenticate({
    required String login,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: login,
      password: password,
    );
  }

  @override
  Future<void> finishAuthentication() async {
    // TODO: save user data and other

    // need delay
    await Future.delayed(const Duration(seconds: 1), () {
      FeedRoute().go(_context);
    });
  }

  @override
  Future<void> logOut() async {
    AuthRoute().go(_context);
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
