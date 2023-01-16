import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../feature/settings/domain/service/settings_service.dart';

@Singleton(as: SettingsService)
class ProdSettingsService implements SettingsService {
  ProdSettingsService({
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth;

  final FirebaseAuth _firebaseAuth;

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }
}
