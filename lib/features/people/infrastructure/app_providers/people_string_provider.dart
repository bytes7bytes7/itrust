import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../application/providers/people_string_provider.dart';

@Singleton(as: PeopleStringProvider)
class ProdPeopleStringProvider extends L10nProvider
    implements PeopleStringProvider {
  ProdPeopleStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadUsers => l10n.can_not_load_users;

  @override
  String get canNotLoadPeopleAmount => l10n.can_not_load_people_amount;
}
