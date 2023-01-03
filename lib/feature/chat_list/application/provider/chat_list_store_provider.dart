import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/application/persistence/search_repository.dart';
import '../../../common/domain/domain.dart';
import '../store/chat_list/chat_list_store.dart';

final _getIt = GetIt.instance;

final chatListStoreProvider =
    StateNotifierProvider<ChatListStoreNotifier, ChatListStore>(
  (ref) => ChatListStoreNotifier(
    ChatListStore(
      searchRepository: _getIt.get<SearchRepository<Chat>>(),
      isSelectedAlgorithm: (chat, query) =>
          chat.title.toLowerCase().contains(query.toLowerCase()),
    ),
  ),
);

class ChatListStoreNotifier extends StateNotifier<ChatListStore> {
  ChatListStoreNotifier(super.state);

  set store(ChatListStore value) => state = value;
}
