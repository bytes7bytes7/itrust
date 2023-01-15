abstract class AuthService {
  bool get isLoggedIn;

  Stream<bool> get onIsLoggedInChanged;

  /// Call this method before doing anything else.
  Future<void> init();

  Future<void> authenticate({
    required String login,
    required String password,
  });

  Future<void> logOut();
}
