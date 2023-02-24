abstract class CredentialsRepository {
  abstract Stream<String> dbPassphrase;

  abstract Stream<String> token;

  abstract Stream<String> refreshToken;
}
