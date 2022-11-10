import 'package:equatable/equatable.dart';

import '../../../common/domain/domain.dart';

class Token extends Equatable {
  const Token({
    required this.userID,
    required this.access,
    required this.refresh,
  });

  final UserID userID;
  final String access;
  final String refresh;

  @override
  List<Object?> get props => [
        userID,
        access,
        refresh,
      ];
}
