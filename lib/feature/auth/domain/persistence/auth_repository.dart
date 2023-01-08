import '../../../common/domain/domain.dart';

abstract class AuthRepository {
  Future<User> authenticate({
    required String login,
    required String password,
  });
}
