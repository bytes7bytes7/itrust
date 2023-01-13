import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../feature/common/domain/domain.dart';
import '../../../feature/common/domain/service/auth_service.dart';

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
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }
}
