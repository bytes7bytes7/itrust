import 'package:equatable/equatable.dart';

abstract class BurnType extends Equatable {
  const BurnType();

  @override
  List<Object?> get props => [];
}

class NeverBurnType extends BurnType {
  const NeverBurnType();
}

class AfterTimeBurnType extends BurnType {
  const AfterTimeBurnType({required this.dateTime});

  final DateTime dateTime;

  @override
  List<Object?> get props => [dateTime];
}
