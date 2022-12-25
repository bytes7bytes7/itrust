import 'package:equatable/equatable.dart';

import '../../../common/domain/domain.dart';
import 'mute_type.dart';

class ChatMute extends Equatable {
  const ChatMute({
    required this.chatID,
    required this.muteType,
  });

  final ChatID chatID;
  final MuteType muteType;

  @override
  List<Object?> get props => [chatID, muteType];
}
