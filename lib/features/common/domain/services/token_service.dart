abstract class TokenService {
  Future<void> setToken(String token);

  Future<void> removeToken();
}
