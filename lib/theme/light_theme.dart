import 'package:flutter/material.dart';

import 'extension/extension.dart';
import 'font_family.dart';

part 'light_colors.dart';

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: _LightColors.cFFFFFFFF,
  colorScheme: const ColorScheme.light().copyWith(
    secondary: _LightColors.cFFEC2885,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 8,
    backgroundColor: _LightColors.cFFFFFFFF,
    actionsIconTheme: IconThemeData(
      color: _LightColors.cFFFFFFFF,
      size: 24,
    ),
    shadowColor: _LightColors.c26000000,
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
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: _LightColors.cFFEC2885,
    linearTrackColor: Colors.transparent,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    isDense: true,
    contentPadding: EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 0,
    ),
    hintStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: _LightColors.cFFC7C7C7,
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide.none,
    ),
  ),
  textTheme: const TextTheme(
    headline5: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: _LightColors.cFF000000,
    ),
    headline6: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: _LightColors.cFF000000,
    ),
    subtitle1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: _LightColors.cFF000000,
    ),
    bodyText1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
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
      chatCard: _LightColors.cFFFFFFFF,
      myMsgForeground: _LightColors.cFFFFFFFF,
      myMsgBackground: _LightColors.cFF000000,
      othersMsgForeground: _LightColors.cFF000000,
      othersMsgBackground: _LightColors.cFFF0EFEF,
      infoMsgForeground: _LightColors.cFF000000,
      infoMsgBackground: _LightColors.cFFF0EFEF,
      textFieldIcon: _LightColors.cFF1A1A1A,
      textFieldIconSplash: _LightColors.c26000000,
      textFieldBackground: _LightColors.cFFF0EFEF,
      simpleIcon: _LightColors.cFF000000,
      infoMsgPreviewColor: _LightColors.cFFEC2885,
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
      roundedFilledIcon: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.zero,
        ),
        minimumSize: MaterialStateProperty.all(
          const Size.square(40),
        ),
        shape: const MaterialStatePropertyAll(
          CircleBorder(
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
