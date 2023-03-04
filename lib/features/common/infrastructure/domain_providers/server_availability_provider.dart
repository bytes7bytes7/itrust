import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../utils/server_settings.dart';
import '../../domain/domain.dart';

@Singleton(as: ServerAvailabilityProvider)
class ProdServerAvailabilityProvider implements ServerAvailabilityProvider {
  const ProdServerAvailabilityProvider(this._serverSettings);

  final ServerSettings _serverSettings;

  @override
  Future<bool> check() async {
    try {
      await Socket.connect(_serverSettings.ip, _serverSettings.port);
      return true;
    } catch (e) {
      return false;
    }
  }
}
