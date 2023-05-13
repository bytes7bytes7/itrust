import '../../../../common/domain/entities/message/message.dart';
import '../../../../common/domain/value_objects/message_id/message_id.dart';

class MessageEvent {
  const MessageEvent({
    this.created = const [],
    this.deleted = const [],
    this.updated = const [],
  });

  final List<Message> created;
  final List<MessageID> deleted;
  final List<Message> updated;
}
