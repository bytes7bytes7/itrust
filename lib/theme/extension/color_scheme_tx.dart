import 'package:flutter/material.dart';

class ColorSchemeTX extends ThemeExtension<ColorSchemeTX> {
  const ColorSchemeTX({
    required this.circleAvatarBackground,
    required this.circleAvatarForeground,
    required this.unreadBackground,
    required this.onlineMarkStroke,
    required this.onlineMarkCenter,
    required this.chatCard,
    required this.myMsgForeground,
    required this.myMsgBackground,
    required this.othersMsgForeground,
    required this.othersMsgBackground,
    required this.textFieldIcon,
    required this.textFieldIconSplash,
    required this.textFieldBackground,
    required this.simpleIcon,
  });

  final Color circleAvatarBackground;
  final Color circleAvatarForeground;
  final Color unreadBackground;
  final Color onlineMarkStroke;
  final Color onlineMarkCenter;
  final Color chatCard;
  final Color myMsgForeground;
  final Color myMsgBackground;
  final Color othersMsgForeground;
  final Color othersMsgBackground;
  final Color textFieldIcon;
  final Color textFieldIconSplash;
  final Color textFieldBackground;
  final Color simpleIcon;

  ThemeExtension<ColorSchemeTX> copyWith({
    Color? circleAvatarBackground,
    Color? circleAvatarForeground,
    Color? unreadBackground,
    Color? onlineMarkStroke,
    Color? onlineMarkCenter,
    Color? chatCard,
    Color? myMsgForeground,
    Color? myMsgBackground,
    Color? othersMsgForeground,
    Color? othersMsgBackground,
    Color? textFieldIcon,
    Color? textFieldIconSplash,
    Color? textFieldBackground,
    Color? simpleIcon,
  }) {
    return ColorSchemeTX(
      circleAvatarBackground:
          circleAvatarBackground ?? this.circleAvatarBackground,
      circleAvatarForeground:
          circleAvatarForeground ?? this.circleAvatarForeground,
      unreadBackground: unreadBackground ?? this.unreadBackground,
      onlineMarkStroke: onlineMarkStroke ?? this.onlineMarkStroke,
      onlineMarkCenter: onlineMarkCenter ?? this.onlineMarkCenter,
      chatCard: chatCard ?? this.chatCard,
      myMsgForeground: myMsgForeground ?? this.myMsgForeground,
      myMsgBackground: myMsgBackground ?? this.myMsgBackground,
      othersMsgForeground: othersMsgForeground ?? this.othersMsgForeground,
      othersMsgBackground: othersMsgBackground ?? this.othersMsgBackground,
      textFieldIcon: textFieldIcon ?? this.textFieldIcon,
      textFieldIconSplash: textFieldIconSplash ?? this.textFieldIconSplash,
      textFieldBackground: textFieldBackground ?? this.textFieldBackground,
      simpleIcon: simpleIcon ?? this.simpleIcon,
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
      chatCard: Color.lerp(
        chatCard,
        other.chatCard,
        t,
      )!,
      myMsgForeground: Color.lerp(
        myMsgForeground,
        other.myMsgForeground,
        t,
      )!,
      myMsgBackground: Color.lerp(
        myMsgBackground,
        other.myMsgBackground,
        t,
      )!,
      othersMsgForeground: Color.lerp(
        othersMsgForeground,
        other.othersMsgForeground,
        t,
      )!,
      othersMsgBackground: Color.lerp(
        othersMsgBackground,
        other.othersMsgBackground,
        t,
      )!,
      textFieldIcon: Color.lerp(
        textFieldIcon,
        other.textFieldIcon,
        t,
      )!,
      textFieldIconSplash: Color.lerp(
        textFieldIconSplash,
        other.textFieldIconSplash,
        t,
      )!,
      textFieldBackground: Color.lerp(
        textFieldBackground,
        other.textFieldBackground,
        t,
      )!,
      simpleIcon: Color.lerp(
        simpleIcon,
        other.simpleIcon,
        t,
      )!,
    );
  }
}
