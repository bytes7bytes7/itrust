import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

@Singleton(as: UserRepository)
class ProdUserRepository implements UserRepository {
  ProdUserRepository({
    required fb.FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth;

  final fb.FirebaseAuth _firebaseAuth;

  @override
  EndUser? get me => _fromFirebaseUser(_firebaseAuth.currentUser);

  @override
  Stream<EndUser?> get onMeChanged => _firebaseAuth.userChanges().map(
        _fromFirebaseUser,
      );

  EndUser? _fromFirebaseUser(fb.User? user) {
    if (user == null) {
      return null;
    }

    return EndUser(
      id: UserID(user.uid),
      name: user.displayName,
      // TODO: think about email. Will it always be non-nullable?
      email: user.email!,
      // TODO: remake
      avatarUrls: user.photoURL != null ? [user.photoURL!] : [],
    );
  }
}
