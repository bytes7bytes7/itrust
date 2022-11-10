import 'package:equatable/equatable.dart';

import 'online_status.dart';
import 'user_id.dart';

class UserInfo extends Equatable {
  const UserInfo({
    required this.userID,
    required this.onlineStatus,
  });

  final UserID userID;
  final OnlineStatus onlineStatus;

  @override
  List<Object?> get props => [
        userID,
        onlineStatus,
      ];
}
