import 'package:flutter/material.dart';

class ButtonStyleTX extends ThemeExtension<ButtonStyleTX> {
  const ButtonStyleTX({
    required this.filledIcon,
    required this.roundedFilledIcon,
    required this.selectedCategoryItem,
    required this.unselectedCategoryItem,
    required this.smallPrimary,
    required this.smallSecondary,
    required this.secondaryTextButton,
  });

  final ButtonStyle filledIcon;
  final ButtonStyle roundedFilledIcon;
  final ButtonStyle selectedCategoryItem;
  final ButtonStyle unselectedCategoryItem;
  final ButtonStyle smallPrimary;
  final ButtonStyle smallSecondary;
  final ButtonStyle secondaryTextButton;

  @override
  ThemeExtension<ButtonStyleTX> copyWith({
    ButtonStyle? filledIcon,
    ButtonStyle? roundedFilledIcon,
    ButtonStyle? selectedCategoryItem,
    ButtonStyle? unselectedCategoryItem,
    ButtonStyle? smallPrimary,
    ButtonStyle? smallSecondary,
    ButtonStyle? secondaryTextButton,
  }) {
    return ButtonStyleTX(
      filledIcon: filledIcon ?? this.filledIcon,
      roundedFilledIcon: roundedFilledIcon ?? this.roundedFilledIcon,
      selectedCategoryItem: selectedCategoryItem ?? this.selectedCategoryItem,
      unselectedCategoryItem:
          unselectedCategoryItem ?? this.unselectedCategoryItem,
      smallPrimary: smallPrimary ?? this.smallPrimary,
      smallSecondary: smallSecondary ?? this.smallSecondary,
      secondaryTextButton: secondaryTextButton ?? this.secondaryTextButton,
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
      selectedCategoryItem: ButtonStyle.lerp(
        selectedCategoryItem,
        other.selectedCategoryItem,
        t,
      )!,
      unselectedCategoryItem: ButtonStyle.lerp(
        unselectedCategoryItem,
        other.unselectedCategoryItem,
        t,
      )!,
      smallPrimary: ButtonStyle.lerp(
        smallPrimary,
        other.smallPrimary,
        t,
      )!,
      smallSecondary: ButtonStyle.lerp(
        smallSecondary,
        other.smallSecondary,
        t,
      )!,
      secondaryTextButton: ButtonStyle.lerp(
        secondaryTextButton,
        other.secondaryTextButton,
        t,
      )!,
    );
  }
}
