import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../feature/chat/application/store/chat_store/chat_store.dart';
import '../../../feature/chat_list/application/service/chat_list_interaction_service.dart';
import '../../../feature/common/domain/domain.dart';
import '../router/router.dart';

final _getIt = GetIt.instance;

@Singleton(as: ChatListInteractionService)
class ChatListInteractionServiceImpl implements ChatListInteractionService {
  @override
  void onChatCardPressed(Chat chat) {
    // TODO: do NOT use Store, use Repository instead
    _getIt.get<ChatStore>().loadChat(chat.id);
    router.push(AppRoutes.chat.path.replaceFirst(':id', chat.id.value));
  }
}
