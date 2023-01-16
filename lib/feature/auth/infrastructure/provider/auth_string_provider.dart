import 'package:injectable/injectable.dart';

import '../../../common/application/provider/string_provider.dart';
import '../../application/provider/auth_string_provider.dart';

@Singleton(as: AuthStringProvider)
class ProdAuthStringProvider extends StringProvider
    implements AuthStringProvider {
  ProdAuthStringProvider({required super.navigatorKey});

  @override
  String get unknownError => l10n.unknown_error;

  @override
  String get userNotFound => l10n.user_not_found_error;

  @override
  String get wrongPassword => l10n.wrong_password_error;
}
