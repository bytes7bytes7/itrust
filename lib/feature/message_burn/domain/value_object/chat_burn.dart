import 'package:equatable/equatable.dart';

import '../../../common/domain/domain.dart';
import 'burn_type.dart';

class ChatBurn extends Equatable {
  const ChatBurn({
    required this.chatID,
    required this.burnType,
  });

  final ChatID chatID;
  final BurnType burnType;

  @override
  List<Object?> get props => [chatID, burnType];
}
