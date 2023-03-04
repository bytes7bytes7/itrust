import 'package:injectable/injectable.dart';

import '../utils/server_settings.dart';
import 'env.dart';

@module
abstract class EnvModule {
  @singleton
  ServerSettings get serverSettings => ServerSettings(
        ip: Env.serverIp,
        port: int.parse(Env.serverPort),
        baseUri: '${Env.serverProtocol}://${Env.serverIp}:${Env.serverPort}/',
      );
}
