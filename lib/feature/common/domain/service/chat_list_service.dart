import 'chats_event.dart';

abstract class ChatListService {
  Stream<ChatsEvent> get chatsEvents;
}
