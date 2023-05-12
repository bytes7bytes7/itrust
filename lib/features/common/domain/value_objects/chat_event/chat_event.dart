import '../../entities/chat/chat.dart';
import '../chat_id/chat_id.dart';

class ChatEvent {
  const ChatEvent({
    this.created = const [],
    this.deleted = const [],
    this.updated = const [],
  });

  final List<Chat> created;
  final List<ChatID> deleted;
  final List<Chat> updated;
}
