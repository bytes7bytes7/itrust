import 'package:equatable/equatable.dart';

import '../../../common/domain/domain.dart';
import 'chat_role.dart';

class ChatInfo extends Equatable {
  const ChatInfo({
    required this.chatID,
    required this.participantIDs,
    required this.roles,
    required this.notifications,
    required this.burn,
  });

  final ChatID chatID;
  final List<UserID> participantIDs;
  final Map<UserID, ChatRole> roles;
  final ChatNotification? notifications;
  final ChatBurn? burn;

  @override
  List<Object?> get props => [
        chatID,
        participantIDs,
        roles,
        notifications,
        burn,
      ];
}
