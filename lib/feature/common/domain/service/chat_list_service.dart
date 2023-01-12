import 'package:injectable/injectable.dart';

import 'chats_event.dart';

abstract class ChatListService {
  Stream<ChatsEvent> get chatsEvents;

  @postConstruct
  void init();

  @disposeMethod
  void dispose();

  Future<void> load({
    required int limit,
    required int offset,
  });
}
