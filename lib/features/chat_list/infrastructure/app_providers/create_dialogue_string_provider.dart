import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../application/providers/create_dialogue_string_provider.dart';

@Singleton(as: CreateDialogueStringProvider)
class ProdCreateDialogueStringProvider extends L10nProvider
    implements CreateDialogueStringProvider {
  ProdCreateDialogueStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadUsers => l10n.can_not_load_users;
}
