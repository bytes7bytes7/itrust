import '../entity/entity.dart';
import '../value_object/value_object.dart';

abstract class ChatsEvent {
  const ChatsEvent();
}

class UpdateChatsEvent extends ChatsEvent {
  const UpdateChatsEvent(this.chats);

  final List<Chat> chats;
}

class DeleteChatsEvent extends ChatsEvent {
  const DeleteChatsEvent(this.chatIDs);

  final List<ChatID> chatIDs;
}
