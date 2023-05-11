import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../application/providers/chat_string_provider.dart';

@Singleton(as: ChatStringProvider)
class ProdChatStringProvider extends L10nProvider
    implements ChatStringProvider {
  ProdChatStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadChatInfo => l10n.can_not_load_chat_info;
}
