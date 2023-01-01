import 'dart:ui';

import 'package:flutter/material.dart';

class SizeTX extends ThemeExtension<SizeTX> {
  const SizeTX({
    required this.circleAvatarRadius,
  });

  final double circleAvatarRadius;

  ThemeExtension<SizeTX> copyWith({
    double? circleAvatarRadius,
  }) {
    return SizeTX(
      circleAvatarRadius: circleAvatarRadius ?? this.circleAvatarRadius,
    );
  }

  @override
  ThemeExtension<SizeTX> lerp(
    ThemeExtension<SizeTX>? other,
    double t,
  ) {
    if (other is! SizeTX) {
      return this;
    }

    return SizeTX(
      circleAvatarRadius: lerpDouble(
        circleAvatarRadius,
        other.circleAvatarRadius,
        t,
      )!,
    );
  }
}
