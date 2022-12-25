import 'package:equatable/equatable.dart';

abstract class BurnType {
  const BurnType();
}

class NeverBurnType extends BurnType {
  const NeverBurnType();
}

class AfterTimeBurnType extends BurnType with EquatableMixin {
  const AfterTimeBurnType({
    required this.dateTime,
  });

  final DateTime dateTime;

  @override
  List<Object?> get props => [dateTime];
}
