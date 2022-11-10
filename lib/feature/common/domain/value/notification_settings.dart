import 'package:equatable/equatable.dart';

import 'chat_notifications.dart';
import 'mute_type.dart';

class NotificationSettings extends Equatable {
  const NotificationSettings({
    required this.muteType,
    required this.exceptions,
  });

  final MuteType muteType;
  final List<ChatNotifications> exceptions;

  @override
  List<Object?> get props => [
        muteType,
        exceptions,
      ];
}
