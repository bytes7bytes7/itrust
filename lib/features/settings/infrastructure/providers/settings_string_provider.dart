import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/settings_string_provider.dart';

@Singleton(as: SettingsStringProvider)
class ProdSettingsStringProvider extends L10nProvider
    implements SettingsStringProvider {
  ProdSettingsStringProvider({required super.navigatorKey});

  @override
  String get serverNotAvailable => l10n.server_not_available;

  @override
  String get unknownError => l10n.unknown_error;
}
