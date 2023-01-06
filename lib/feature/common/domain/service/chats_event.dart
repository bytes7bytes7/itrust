import '../entity/entity.dart';
import '../value_object/value_object.dart';

abstract class ChatsEvent {
  const ChatsEvent();
}

class NewChatsEvent extends ChatsEvent {
  const NewChatsEvent(this.chats);

  /// {index in list: new Chat}
  final Map<int, Chat> chats;
}

class UpdateChatsEvent extends ChatsEvent {
  const UpdateChatsEvent(this.chats);

  /// {new index in list: update Chat}
  final Map<int, Chat> chats;
}

class DeleteChatsEvent extends ChatsEvent {
  const DeleteChatsEvent(this.chatIDs);

  final List<ChatID> chatIDs;
}
