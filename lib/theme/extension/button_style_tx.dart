import 'package:flutter/material.dart';

class ButtonStyleTX extends ThemeExtension<ButtonStyleTX> {
  const ButtonStyleTX({
    required this.filledIcon,
    required this.roundedFilledIcon,
  });

  final ButtonStyle filledIcon;
  final ButtonStyle roundedFilledIcon;

  @override
  ThemeExtension<ButtonStyleTX> copyWith({
    ButtonStyle? filledIcon,
    ButtonStyle? roundedFilledIcon,
  }) {
    return ButtonStyleTX(
      filledIcon: filledIcon ?? this.filledIcon,
      roundedFilledIcon: roundedFilledIcon ?? this.roundedFilledIcon,
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
      roundedFilledIcon: ButtonStyle.lerp(
        roundedFilledIcon,
        other.roundedFilledIcon,
        t,
      )!,
    );
  }
}
