import 'package:flutter/material.dart';

class ColorSchemeTX extends ThemeExtension<ColorSchemeTX> {
  const ColorSchemeTX({
    required this.circleAvatarBackground,
    required this.circleAvatarForeground,
    required this.unreadBackground,
    required this.onlineMarkStroke,
    required this.onlineMarkCenter,
  });

  final Color circleAvatarBackground;
  final Color circleAvatarForeground;
  final Color unreadBackground;
  final Color onlineMarkStroke;
  final Color onlineMarkCenter;

  ThemeExtension<ColorSchemeTX> copyWith({
    Color? circleAvatarBackground,
    Color? circleAvatarForeground,
    Color? unreadBackground,
    Color? onlineMarkStroke,
    Color? onlineMarkCenter,
  }) {
    return ColorSchemeTX(
      circleAvatarBackground:
          circleAvatarBackground ?? this.circleAvatarBackground,
      circleAvatarForeground:
          circleAvatarForeground ?? this.circleAvatarForeground,
      unreadBackground: unreadBackground ?? this.unreadBackground,
      onlineMarkStroke: onlineMarkStroke ?? this.onlineMarkStroke,
      onlineMarkCenter: onlineMarkCenter ?? this.onlineMarkCenter,
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
      onlineMarkStroke: Color.lerp(
        onlineMarkStroke,
        other.onlineMarkStroke,
        t,
      )!,
      onlineMarkCenter: Color.lerp(
        onlineMarkCenter,
        other.onlineMarkCenter,
        t,
      )!,
    );
  }
}
