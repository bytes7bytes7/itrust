import 'package:equatable/equatable.dart';

import '../../../common/domain/domain.dart';

class Account extends Equatable {
  const Account({
    required this.user,
    required this.notificationSettings,
  });

  final User user;
  final NotificationSettings notificationSettings;

  @override
  List<Object?> get props => [
        user,
        notificationSettings,
      ];
}
