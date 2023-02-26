abstract class TokenService {
  Future<void> init();

  Future<String?> getToken();

  Future<void> setToken(String token);

  Future<void> removeToken();
}
