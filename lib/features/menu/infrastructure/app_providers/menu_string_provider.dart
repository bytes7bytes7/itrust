import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../application/providers/menu_string_provider.dart';

@Singleton(as: MenuStringProvider)
class ProdMenuStringProvider extends L10nProvider
    implements MenuStringProvider {
  ProdMenuStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadMyself => l10n.can_not_load_myself;
}
