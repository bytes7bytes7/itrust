import '../../../common/domain/domain.dart';
import '../value_object/value_object.dart';

class Chat {
  const Chat({
    required this.id,
    required this.title,
    required this.unreadAmount,
    required this.chatType,
    required this.onlineStatus,
    this.avatarUrl,
    this.lastMessage,
  });

  final ChatID id;
  final String? avatarUrl;
  final String title;
  final Message? lastMessage;
  final int unreadAmount;
  final ChatType chatType;
  final OnlineStatus onlineStatus;
}
