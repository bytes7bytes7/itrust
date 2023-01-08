import '../../domain/domain.dart';

abstract class UserRepository {
  Stream<User> get user;
}
