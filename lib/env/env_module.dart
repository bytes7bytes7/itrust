import 'package:injectable/injectable.dart';

import '../utils/server_settings.dart';
import 'env.dart';

@module
abstract class EnvModule {
  @singleton
  ServerSettings get serverSettings => ServerSettings(
        authority: Env.authority,
        protocol: Env.protocol,
      );
}
