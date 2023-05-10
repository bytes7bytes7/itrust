import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../domain/providers/create_monologue_string_provider.dart';

@Singleton(as: CreateMonologueStringProvider)
class ProdCreateMonologueStringProvider extends L10nProvider
    implements CreateMonologueStringProvider {
  ProdCreateMonologueStringProvider({required super.navigatorKey});

  @override
  String get canNotCreateChat => l10n.can_not_create_chat;
}
