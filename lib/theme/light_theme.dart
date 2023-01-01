import 'package:flutter/material.dart';

import 'extension/extension.dart';
import 'font_family.dart';

part 'light_colors.dart';

final lightTheme = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(
    elevation: 8,
    backgroundColor: _LightColors.cFFFFFFFF,
    actionsIconTheme: IconThemeData(
      color: _LightColors.cFFFFFFFF,
      size: 24,
    ),
    shadowColor: _LightColors.c0F000000,
    titleTextStyle: TextStyle(
      fontFamily: FontFamily.roboto,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: _LightColors.cFF000000,
    ),
  ),
  iconTheme: const IconThemeData(
    size: 24,
  ),
  textTheme: const TextTheme(
    headline5: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: _LightColors.cFF000000,
    ),
    subtitle1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: _LightColors.cFF000000,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: _LightColors.cFF000000,
    ),
    caption: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: _LightColors.cFFFFFFFF,
    ),
  ),
  extensions: [
    const ColorSchemeTX(
      circleAvatarBackground: _LightColors.cFF000000,
      circleAvatarForeground: _LightColors.cFFFFFFFF,
      unreadBackground: _LightColors.cFF000000,
      onlineMarkStroke: _LightColors.cFF000000,
      onlineMarkCenter: _LightColors.cFFFFFFFF,
    ),
    ButtonStyleTX(
      filledIcon: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.zero,
        ),
        minimumSize: MaterialStateProperty.all(
          const Size.square(32),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide.none,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return _LightColors.cFFC7C7C7;
            }

            return _LightColors.cFF000000;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            return _LightColors.cFFFFFFFF;
          },
        ),
      ),
    ),
  ],
);