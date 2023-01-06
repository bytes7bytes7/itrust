import '../entity/entity.dart';
import '../value_object/value_object.dart';

abstract class MessagesEvent {
  const MessagesEvent();
}

class NewMessagesEvent extends MessagesEvent {
  const NewMessagesEvent(this.messages);

  final List<Message> messages;
}

class UpdateMessagesEvent extends MessagesEvent {
  const UpdateMessagesEvent(this.messages);

  final List<Message> messages;
}

class DeleteMessagesEvent extends MessagesEvent {
  const DeleteMessagesEvent(this.messageIDs);

  final List<MessageID> messageIDs;
}
