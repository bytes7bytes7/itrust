import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../chat/application/store/chat_store/chat_store.dart';
import '../../../chat_list/application/service/chat_list_interaction_service.dart';
import '../../../common/domain/domain.dart';

final _getIt = GetIt.instance;

@Singleton(as: ChatListInteractionService)
class ChatListInteractionServiceImpl implements ChatListInteractionService {
  @override
  void onChatCardPressed(
    Chat chat,
  ) {
    _getIt.get<ChatStore>().loadChat(chat.id);
    // _getIt.get<NavigatorKey>().currentState?.pushNamed();
  }
}
