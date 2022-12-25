import 'package:equatable/equatable.dart';

import '../../../common/domain/domain.dart';

class AuthDetail extends Equatable {
  const AuthDetail({
    required this.userID,
    required this.name,
    this.avatarUrl,
  });

  final UserID userID;
  final String name;
  final String? avatarUrl;

  @override
  List<Object?> get props => [
        userID,
        name,
        avatarUrl,
      ];
}
