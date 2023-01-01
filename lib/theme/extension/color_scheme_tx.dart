import 'package:flutter/material.dart';

class ColorSchemeTX extends ThemeExtension<ColorSchemeTX> {
  const ColorSchemeTX({
    required this.circleAvatarBackground,
    required this.circleAvatarForeground,
    required this.unreadBackground,
  });

  final Color circleAvatarBackground;
  final Color circleAvatarForeground;
  final Color unreadBackground;

  ThemeExtension<ColorSchemeTX> copyWith({
    Color? circleAvatarBackground,
    Color? circleAvatarForeground,
    Color? unreadBackground,
  }) {
    return ColorSchemeTX(
      circleAvatarBackground:
          circleAvatarBackground ?? this.circleAvatarBackground,
      circleAvatarForeground:
          circleAvatarForeground ?? this.circleAvatarForeground,
      unreadBackground: unreadBackground ?? this.unreadBackground,
    );
  }

  @override
  ThemeExtension<ColorSchemeTX> lerp(
    ThemeExtension<ColorSchemeTX>? other,
    double t,
  ) {
    if (other is! ColorSchemeTX) {
      return this;
    }

    return ColorSchemeTX(
      circleAvatarBackground: Color.lerp(
        circleAvatarBackground,
        other.circleAvatarBackground,
        t,
      )!,
      circleAvatarForeground: Color.lerp(
        circleAvatarForeground,
        other.circleAvatarForeground,
        t,
      )!,
      unreadBackground: Color.lerp(
        unreadBackground,
        other.unreadBackground,
        t,
      )!,
    );
  }
}
