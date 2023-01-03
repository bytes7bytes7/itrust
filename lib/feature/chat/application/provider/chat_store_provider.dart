import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../store/chat_store/chat_store.dart';

final chatStoreProvider = StateNotifierProvider<ChatStoreNotifier, ChatStore?>(
    (ref) => ChatStoreNotifier(null));

class ChatStoreNotifier extends StateNotifier<ChatStore?> {
  ChatStoreNotifier(super.state);

  set store(ChatStore value) => state = value;
}
