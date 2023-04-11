import '../../domain/domain.dart';

abstract class EndUserRepository {
  EndUser? get me;

  Stream<EndUser?> get onMeChanged;

  Future<void> init();

  Future<void> dispose();

  Future<void> setMe(EndUser user);

  Future<void> removeMe();

  Future<void> addOrUpdate(EndUser user);
}
