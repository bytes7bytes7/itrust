import '../../../common/domain/domain.dart';
import '../value/value.dart';

class Chat {
  const Chat({
    required this.id,
    required this.avatarUrl,
    required this.title,
    required this.lastMessage,
    required this.unreadAmount,
    required this.chatType,
  });

  final ChatID id;
  final String avatarUrl;
  final String title;
  final Message lastMessage;
  final int unreadAmount;
  final ChatType chatType;
}
