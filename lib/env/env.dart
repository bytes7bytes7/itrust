// ignore_for_file: avoid_classes_with_only_static_members

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env.dev', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'SERVER_IP')
  static final serverIp = _Env.serverIp;

  @EnviedField(varName: 'SERVER_PORT')
  static final serverPort = _Env.serverPort;

  @EnviedField(varName: 'HTTP_SERVER_PROTOCOL')
  static final httpServerProtocol = _Env.httpServerProtocol;

  @EnviedField(varName: 'WS_SERVER_PROTOCOL')
  static final wsServerProtocol = _Env.wsServerProtocol;
}
