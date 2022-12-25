import 'package:equatable/equatable.dart';

import '../../../common/domain/domain.dart';
import 'chat_role.dart';

class ChatInfo extends Equatable {
  const ChatInfo({
    required this.chatID,
    required this.participants,
    required this.roles,
  });

  final ChatID chatID;
  final List<User> participants;
  final Map<UserID, ChatRole> roles;

  @override
  List<Object?> get props => [
        chatID,
        participants,
        roles,
      ];
}
