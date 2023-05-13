class ServerSettings {
  const ServerSettings({
    required this.ip,
    required this.port,
    required this.httpBaseUri,
    required this.wsBaseUri,
  });

  final String ip;
  final int port;
  final String httpBaseUri;
  final String wsBaseUri;
}
