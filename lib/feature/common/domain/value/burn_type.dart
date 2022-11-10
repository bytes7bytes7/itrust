import 'package:equatable/equatable.dart';

abstract class BurnType {
  const BurnType();
}

class NeverBurnType implements BurnType {
  const NeverBurnType();
}

class AfterTimeBurnType extends Equatable implements BurnType {
  const AfterTimeBurnType({required this.dateTime});

  final DateTime dateTime;

  @override
  List<Object?> get props => [dateTime];
}
