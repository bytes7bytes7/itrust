import '../../features/common/domain/value_objects/token_pair/token_pair.dart';

abstract class TokenRepository {
  Future<void> init();

  Future<String?> getAccessToken();

  Future<String?> getRefreshToken();

  Future<void> setTokenPair(TokenPair tokenPair);

  Future<void> removeTokens();
}
