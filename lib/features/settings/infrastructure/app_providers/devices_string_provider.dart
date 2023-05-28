import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/devices_string_provider.dart';

@Singleton(as: DevicesStringProvider)
class ProdDevicesStringProvider extends L10nProvider
    implements DevicesStringProvider {
  ProdDevicesStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadSessions => l10n.can_not_load_sessions;

  @override
  String get canNotTerminateSession => l10n.can_not_terminate_session;
}
