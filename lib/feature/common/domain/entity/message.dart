import '../value/value.dart';

class Message {
  const Message({
    required this.id,
    required this.chatID,
    required this.senderID,
    required this.text,
    required this.mediaUrls,
    required this.sentAt,
    required this.modifiedAt,
    required this.willBeBurntAt,
    required this.isRead,
  });

  final MessageID id;
  final ChatID chatID;
  final UserID senderID;
  final String text;
  final List<String> mediaUrls;
  final DateTime sentAt;
  final DateTime? modifiedAt;
  final DateTime? willBeBurntAt;
  final bool isRead;
}
