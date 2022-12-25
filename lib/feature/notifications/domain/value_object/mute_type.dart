import 'package:equatable/equatable.dart';

abstract class MuteType {
  const MuteType();
}

class NeverMuteType extends MuteType {
  const NeverMuteType();
}

class ForeverMuteType extends MuteType {
  const ForeverMuteType();
}

class ForTimeMuteType extends MuteType with EquatableMixin {
  const ForTimeMuteType({required this.dateTime});

  final DateTime dateTime;

  @override
  List<Object?> get props => [dateTime];
}
