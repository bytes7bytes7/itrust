import '../../features/common/domain/domain.dart';

abstract class StaffUserRepository {
  Future<void> init();

  Future<void> dispose();

  Future<void> addOrUpdate({required StaffUser user});

  Future<StaffUser?> getByID({required UserID id});
}
