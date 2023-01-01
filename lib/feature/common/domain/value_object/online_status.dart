import 'package:equatable/equatable.dart';

abstract class OnlineStatus extends Equatable {
  const OnlineStatus();

  @override
  List<Object?> get props => [];
}

class IsOnlineStatus extends OnlineStatus {
  const IsOnlineStatus();
}

class HiddenOnlineStatus extends OnlineStatus {
  const HiddenOnlineStatus();
}

class LastSeenOnlineStatus extends OnlineStatus {
  const LastSeenOnlineStatus({required this.dateTime});

  final DateTime dateTime;

  @override
  List<Object?> get props => [dateTime];
}

class NoOnlineStatus extends OnlineStatus {
  const NoOnlineStatus();
}
