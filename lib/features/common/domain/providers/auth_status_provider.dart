abstract class AuthStatusProvider {
  Stream<bool> get onIsLoggedInChanged;

  void dispose();

  void setTo(bool isLoggedIn);
}
