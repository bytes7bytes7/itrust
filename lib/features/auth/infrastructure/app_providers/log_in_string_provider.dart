import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/log_in_string_provider.dart';

@Singleton(as: LogInStringProvider)
class ProdLogInStringProvider extends L10nProvider
    implements LogInStringProvider {
  const ProdLogInStringProvider({required super.navigatorKey});

  @override
  String get unknownError => l10n.unknown_error;

  @override
  String get invalidCredentials => l10n.invalid_credentials_error;
}
