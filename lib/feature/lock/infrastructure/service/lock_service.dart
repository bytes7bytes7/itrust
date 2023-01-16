import 'package:injectable/injectable.dart';

import '../../domain/service/lock_service.dart';

@test
@Singleton(as: LockService)
class TestLockService implements LockService {
  @override
  Future<void> unlock({required String passphrase}) async {
    return;
  }
}
