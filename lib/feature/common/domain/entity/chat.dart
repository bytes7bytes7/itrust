import '../value_object/value_object.dart';
import 'message.dart';

class Chat {
  const Chat({
    required this.id,
    required this.title,
    required this.unreadAmount,
    required this.chatType,
    required this.onlineStatus,
    this.avatarUrl,
    this.icon,
    this.lastMessage,
  });

  final ChatID id;
  final String? avatarUrl;

  // Name of icon if [avatarUrl] == null
  final String? icon;
  final String title;
  final Message? lastMessage;
  final int unreadAmount;
  final ChatType chatType;
  final OnlineStatus onlineStatus;
}
