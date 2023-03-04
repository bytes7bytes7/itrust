import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../utils/server_settings.dart';
import '../../domain/domain.dart';

const _checkTimeout = Duration(seconds: 5);

@Singleton(as: ServerAvailabilityProvider)
class ProdServerAvailabilityProvider implements ServerAvailabilityProvider {
  const ProdServerAvailabilityProvider(this._serverSettings);

  final ServerSettings _serverSettings;

  @override
  Future<bool> check() async {
    try {
      await Socket.connect(
        _serverSettings.ip,
        _serverSettings.port,
        timeout: _checkTimeout,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
