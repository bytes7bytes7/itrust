import 'package:equatable/equatable.dart';

import 'burn_type.dart';
import 'chat_burn.dart';

class BurnSetting extends Equatable {
  const BurnSetting({
    required this.burnType,
    required this.exceptions,
  });

  final BurnType burnType;
  final List<ChatBurn> exceptions;

  @override
  List<Object?> get props => [
        burnType,
        exceptions,
      ];
}
