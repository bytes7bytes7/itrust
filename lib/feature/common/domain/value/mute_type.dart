import 'package:equatable/equatable.dart';

abstract class MuteType extends Equatable {
  const MuteType();

  @override
  List<Object?> get props => [];
}

class NeverMuteType extends MuteType {
  const NeverMuteType();
}

class ForeverMuteType extends MuteType {
  const ForeverMuteType();
}

class ForTimeMuteType extends MuteType {
  const ForTimeMuteType({required this.dateTime});

  final DateTime dateTime;

  @override
  List<Object?> get props => [dateTime];
}
