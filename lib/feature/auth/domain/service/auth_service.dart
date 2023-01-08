abstract class AuthService {
  Future<void> authenticate({
    required String login,
    required String password,
  });
}
