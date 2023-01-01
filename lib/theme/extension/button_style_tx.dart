import 'package:flutter/material.dart';

class ButtonStyleTX extends ThemeExtension<ButtonStyleTX> {
  const ButtonStyleTX({
    required this.filledIcon,
  });

  final ButtonStyle filledIcon;

  ThemeExtension<ButtonStyleTX> copyWith({
    ButtonStyle? filledIcon,
  }) {
    return ButtonStyleTX(
      filledIcon: filledIcon ?? this.filledIcon,
    );
  }

  @override
  ThemeExtension<ButtonStyleTX> lerp(
    ThemeExtension<ButtonStyleTX>? other,
    double t,
  ) {
    if (other is! ButtonStyleTX) {
      return this;
    }

    return ButtonStyleTX(
      filledIcon: ButtonStyle.lerp(
        filledIcon,
        other.filledIcon,
        t,
      )!,
    );
  }
}
