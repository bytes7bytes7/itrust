abstract class ServerExceptionProvider {
  const ServerExceptionProvider();

  String get emailIsAlreadyInUse;

  String get invalidCredentials;

  String get tokenExpired;
}
