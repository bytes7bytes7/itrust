import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/change_personal_info_string_provider.dart';

@Singleton(as: ChangePersonalInfoStringProvider)
class ProdChangePersonalInfoStringProvider extends L10nProvider
    implements ChangePersonalInfoStringProvider {
  ProdChangePersonalInfoStringProvider({required super.navigatorKey});

  @override
  String get canNotGetInfo => l10n.can_not_get_user_info;
}
