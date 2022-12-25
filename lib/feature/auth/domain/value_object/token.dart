import 'package:equatable/equatable.dart';

class Token extends Equatable {
  const Token({
    required this.access,
    required this.refresh,
  });

  final String access;
  final String refresh;

  @override
  List<Object?> get props => [
        access,
        refresh,
      ];
}
