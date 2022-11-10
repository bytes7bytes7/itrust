import 'burn_type.dart';
import 'chat_id.dart';

class ChatBurn {
  const ChatBurn({
    required this.chatID,
    required this.burnType,
  });

  final ChatID chatID;
  final BurnType burnType;
}
