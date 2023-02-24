import '../../domain/domain.dart';

abstract class UserRepository {
  EndUser? get me;

  Stream<EndUser?> get onMeChanged;

  void dispose();
}
