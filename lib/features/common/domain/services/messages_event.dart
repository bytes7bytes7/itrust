import '../entities/entities.dart';
import '../value_objects/value_objects.dart';

abstract class MessagesEvent {
  const MessagesEvent();
}

class UpdateMessagesEvent extends MessagesEvent {
  const UpdateMessagesEvent(this.messages);

  final List<Message> messages;
}

class DeleteMessagesEvent extends MessagesEvent {
  const DeleteMessagesEvent(this.messageIDs);

  final List<MessageID> messageIDs;
}
