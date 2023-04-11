import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/staff_user_repository.dart';

@test
@Singleton(as: StaffUserRepository)
class TestStaffUserRepository implements StaffUserRepository {
  final _storage = HashMap<UserID, StaffUser>();

  @override
  Future<void> init() async {}

  @override
  Future<void> dispose() async {}

  @override
  Future<void> addOrUpdate({required StaffUser user}) async {
    _storage[user.id] = user;
  }

  @override
  Future<StaffUser?> getByID({required UserID id}) async {
    return _storage[id];
  }
}
