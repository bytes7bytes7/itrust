import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../application/providers/create_group_string_provider.dart';

@Singleton(as: CreateGroupStringProvider)
class ProdCreateGroupStringProvider extends L10nProvider
    implements CreateGroupStringProvider {
  ProdCreateGroupStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadUsers => l10n.can_not_load_users;

  @override
  String get canNotCreateChat => l10n.can_not_create_chat;
}
