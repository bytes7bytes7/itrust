import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../application/providers/register_string_provider.dart';

@Singleton(as: RegisterStringProvider)
class ProdRegisterStringProvider extends L10nProvider
    implements RegisterStringProvider {
  const ProdRegisterStringProvider({required super.navigatorKey});

  @override
  String get serverNotAvailable => l10n.server_not_available;

  @override
  String get emailIsAlreadyInUse => l10n.email_is_already_in_use;

  @override
  String get unknownError => l10n.unknown_error;
}
