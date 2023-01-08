import '../../../common/domain/domain.dart';

abstract class SettingsRepository {
  Future<User> changeName({required String name});
}
