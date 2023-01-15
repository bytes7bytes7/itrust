import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../feature/common/domain/exception/wrong_password_exception.dart';
import '../../../feature/common/domain/service/auth_service.dart';

@Singleton(as: AuthService)
class ProdAuthService implements AuthService {
  ProdAuthService({
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth;

  final FirebaseAuth _firebaseAuth;

  final _isInitialized = Completer();
  late bool _isLoggedIn;

  @override
  bool get isLoggedIn => _isLoggedIn;

  @override
  Stream<bool> get onIsLoggedInChanged => _firebaseAuth.authStateChanges().map(
        (event) {
          _isLoggedIn = event != null;

          if (!_isInitialized.isCompleted) {
            _isInitialized.complete();
          }

          return _isLoggedIn;
        },
      );

  @override
  Future<void> init() async {
    await _isInitialized.future;
  }

  @override
  Future<void> authenticate({
    required String login,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: login,
        password: password,
      );
    } on FirebaseAuthException {
      try {
        await _firebaseAuth.signInWithEmailAndPassword(
          email: login,
          password: password,
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'wrong-password') {
          throw const WrongPasswordException();
        }

        rethrow;
      }
    }
  }

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }
}
