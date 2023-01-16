import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/exception/exception.dart';
import '../../domain/service/auth_service.dart';

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
        (user) {
          final isLoggedIn = user != null;

          _isLoggedIn = isLoggedIn;

          if (!_isInitialized.isCompleted) {
            _isInitialized.complete();
          }

          return _isLoggedIn;
        },
      );

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    // Call to start listening
    await onIsLoggedInChanged.first;

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

        if (e.code == 'user-not-found') {
          throw const UserNotFoundException();
        }

        if (e.code == 'too-many-requests') {
          throw const TooManyRequestsException();
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
