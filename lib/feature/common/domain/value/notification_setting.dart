import 'package:equatable/equatable.dart';

import 'chat_notification.dart';
import 'mute_type.dart';

class NotificationSetting extends Equatable {
  const NotificationSetting({
    required this.muteType,
    required this.exceptions,
  });

  final MuteType muteType;
  final List<ChatNotification> exceptions;

  @override
  List<Object?> get props => [
        muteType,
        exceptions,
      ];
}
