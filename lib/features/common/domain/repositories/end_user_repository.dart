import '../../domain/domain.dart';

abstract class EndUserRepository {
  EndUser? get me;

  Stream<EndUser?> get onMeChanged;

  void dispose();

  Future<void> setMe(EndUser user);

  Future<void> addOrUpdate(EndUser user);
}
