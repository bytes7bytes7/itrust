import '../../../common/domain/domain.dart';

abstract class AuthService {
  Stream<EndUser?> get users;

  Future<void> authenticate({
    required String login,
    required String password,
  });

  Future<void> finishAuthentication();

  Future<void> logOut();
}
