import 'package:flutter/material.dart';

import 'extension/extension.dart';
import 'font_family.dart';

part 'light_colors.dart';

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: _LightColors.cFFFFFFFF,
  colorScheme: const ColorScheme.light().copyWith(
    primary: _LightColors.cFFEC2885,
    secondary: _LightColors.cFF000000,
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
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 8,
    showUnselectedLabels: false,
    showSelectedLabels: false,
    backgroundColor: _LightColors.cFFFFFFFF,
    selectedIconTheme: IconThemeData(
      size: 24,
      color: _LightColors.cFF000000,
    ),
    unselectedIconTheme: IconThemeData(
      size: 24,
      color: _LightColors.cFFC7C7C7,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.all(14),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide.none,
        ),
      ),
      textStyle: const MaterialStatePropertyAll(
        TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: _LightColors.cFFFFFFFF,
        ),
      ),
      foregroundColor: const MaterialStatePropertyAll(_LightColors.cFFFFFFFF),
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return _LightColors.c26000000;
          }

          return _LightColors.cFF000000;
        },
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.all(2),
      ),
      textStyle: const MaterialStatePropertyAll(
        TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return _LightColors.c3CEC2885;
          }

          return _LightColors.cFFEC2885;
        },
      ),
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: _LightColors.cFFEC2885,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide.none,
    ),
    contentTextStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: _LightColors.cFFFFFFFF,
    ),
    behavior: SnackBarBehavior.floating,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 10,
    ),
    hintStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: _LightColors.cFF888888,
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide.none,
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: _LightColors.cFF000000,
    ),
    headline3: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.normal,
      color: _LightColors.cFF000000,
    ),
    headline4: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: _LightColors.cFF000000,
    ),
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
      avatarBackground: _LightColors.cFF000000,
      avatarForeground: _LightColors.cFFFFFFFF,
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
      textFieldIcon: _LightColors.cFF000000,
      textFieldIconSplash: _LightColors.c26000000,
      textFieldBackground: _LightColors.cFFF0EFEF,
      simpleIcon: _LightColors.cFF000000,
      infoMsgPreviewColor: _LightColors.cFFEC2885,
      msgSender: _LightColors.cFFEC2885,
      snackBarBackgroundDefault: _LightColors.cFFEC2885,
      casualFilledIconForeground: _LightColors.cFFFFFFFF,
      warningFilledIconForeground: _LightColors.cFFFFFFFF,
      casualFilledIconBackground: _LightColors.cFF000000,
      warningFilledIconBackground: _LightColors.cFFEC2885,
      casualIcon: _LightColors.cFF000000,
      warningIcon: _LightColors.cFFEC2885,
      casualTitle: _LightColors.cFF000000,
      warningTitle: _LightColors.cFFEC2885,
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
