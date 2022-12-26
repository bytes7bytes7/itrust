import '../../domain/domain.dart';

abstract class UserRepository {
  abstract User user;

  Stream<User> get onUserChanged;
}
