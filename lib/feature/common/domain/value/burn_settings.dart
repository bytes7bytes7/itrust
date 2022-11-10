import 'package:equatable/equatable.dart';

import 'burn_type.dart';
import 'chat_burn.dart';

class BurnSettings extends Equatable {
  const BurnSettings({
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
