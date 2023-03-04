class ServerSettings {
  const ServerSettings({
    required this.ip,
    required this.port,
    required this.baseUri,
  });

  final String ip;
  final int port;
  final String baseUri;
}
