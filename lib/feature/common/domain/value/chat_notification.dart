import 'package:equatable/equatable.dart';

import 'chat_id.dart';
import 'mute_type.dart';

class ChatNotification extends Equatable {
  const ChatNotification({
    required this.chatID,
    required this.muteType,
  });

  final ChatID chatID;
  final MuteType muteType;

  @override
  List<Object?> get props => [
        chatID,
        muteType,
      ];
}
