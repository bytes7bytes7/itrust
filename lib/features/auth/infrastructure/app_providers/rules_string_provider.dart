import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../application/providers/rules_string_provider.dart';

@Singleton(as: RulesStringProvider)
class ProdRulesStringProvider extends L10nProvider
    implements RulesStringProvider {
  ProdRulesStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadRules => l10n.can_not_load_rules;
}
