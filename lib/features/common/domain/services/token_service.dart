import '../value_objects/token_pair/token_pair.dart';

abstract class TokenService {
  Future<void> init();

  Future<String?> getAccessToken();

  Future<String?> getRefreshToken();

  Future<void> setTokenPair(TokenPair tokenPair);

  Future<void> removeTokens();
}
