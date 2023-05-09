import 'package:injectable/injectable.dart';

import '../../application/providers/chat_list_string_provider.dart';
import '../../application/providers/l10n_provider.dart';

@Singleton(as: ChatListStringProvider)
class ProdChatListStringProvider extends L10nProvider
    implements ChatListStringProvider {
  ProdChatListStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadChats => l10n.can_not_load_chats;
}
