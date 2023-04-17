import 'package:flutter/material.dart';

class ColorSchemeTX extends ThemeExtension<ColorSchemeTX> {
  const ColorSchemeTX({
    required this.avatarBackground,
    required this.avatarForeground,
    required this.unreadIndicatorForeground,
    required this.unreadIndicatorBackground,
    required this.onlineMarkStroke,
    required this.onlineMarkCenter,
    required this.chatCard,
    required this.myMsgForeground,
    required this.myMsgBackground,
    required this.othersMsgForeground,
    required this.othersMsgBackground,
    required this.infoMsgForeground,
    required this.infoMsgBackground,
    required this.textFieldIcon,
    required this.textFieldIconSplash,
    required this.textFieldBackground,
    required this.simpleIcon,
    required this.infoMsgPreviewColor,
    required this.snackBarBackgroundDefault,
    required this.casualFilledIconForeground,
    required this.warningFilledIconForeground,
    required this.casualFilledIconBackground,
    required this.warningFilledIconBackground,
    required this.casualIcon,
    required this.unselectedCasualIcon,
    required this.warningIcon,
    required this.casualTitle,
    required this.warningTitle,
    required this.postBackground,
    required this.commentBackground,
    required this.sectionTitleBackground,
    required this.moreImagesForeground,
    required this.moreImagesBackground,
    required this.shimmerBase,
    required this.shimmerHighlight,
  });

  final Color avatarBackground;
  final Color avatarForeground;
  final Color unreadIndicatorForeground;
  final Color unreadIndicatorBackground;
  final Color onlineMarkStroke;
  final Color onlineMarkCenter;
  final Color chatCard;
  final Color myMsgForeground;
  final Color myMsgBackground;
  final Color othersMsgForeground;
  final Color othersMsgBackground;
  final Color infoMsgForeground;
  final Color infoMsgBackground;
  final Color textFieldIcon;
  final Color textFieldIconSplash;
  final Color textFieldBackground;
  final Color simpleIcon;
  final Color infoMsgPreviewColor;

  /// Use this color if backgroundColor of [SnackBarTheme] is NOT specified.
  final Color snackBarBackgroundDefault;
  final Color casualFilledIconForeground;
  final Color warningFilledIconForeground;
  final Color casualFilledIconBackground;
  final Color warningFilledIconBackground;
  final Color casualIcon;
  final Color unselectedCasualIcon;
  final Color warningIcon;
  final Color casualTitle;
  final Color warningTitle;
  final Color postBackground;
  final Color commentBackground;
  final Color sectionTitleBackground;
  final Color moreImagesForeground;
  final Color moreImagesBackground;
  final Color shimmerBase;
  final Color shimmerHighlight;

  @override
  ThemeExtension<ColorSchemeTX> copyWith({
    Color? avatarBackground,
    Color? avatarForeground,
    Color? unreadIndicatorForeground,
    Color? unreadIndicatorBackground,
    Color? onlineMarkStroke,
    Color? onlineMarkCenter,
    Color? chatCard,
    Color? myMsgForeground,
    Color? myMsgBackground,
    Color? othersMsgForeground,
    Color? othersMsgBackground,
    Color? infoMsgForeground,
    Color? infoMsgBackground,
    Color? textFieldIcon,
    Color? textFieldIconSplash,
    Color? textFieldBackground,
    Color? simpleIcon,
    Color? infoMsgPreviewColor,
    Color? snackBarBackgroundDefault,
    Color? casualFilledIconForeground,
    Color? warningFilledIconForeground,
    Color? casualFilledIconBackground,
    Color? warningFilledIconBackground,
    Color? casualIcon,
    Color? unselectedCasualIcon,
    Color? warningIcon,
    Color? casualTitle,
    Color? warningTitle,
    Color? postBackground,
    Color? commentBackground,
    Color? sectionTitleBackground,
    Color? moreImagesForeground,
    Color? moreImagesBackground,
    Color? shimmerBase,
    Color? shimmerHighlight,
  }) {
    return ColorSchemeTX(
      avatarBackground: avatarBackground ?? this.avatarBackground,
      avatarForeground: avatarForeground ?? this.avatarForeground,
      unreadIndicatorForeground:
          unreadIndicatorForeground ?? this.unreadIndicatorForeground,
      unreadIndicatorBackground:
          unreadIndicatorBackground ?? this.unreadIndicatorBackground,
      onlineMarkStroke: onlineMarkStroke ?? this.onlineMarkStroke,
      onlineMarkCenter: onlineMarkCenter ?? this.onlineMarkCenter,
      chatCard: chatCard ?? this.chatCard,
      myMsgForeground: myMsgForeground ?? this.myMsgForeground,
      myMsgBackground: myMsgBackground ?? this.myMsgBackground,
      othersMsgForeground: othersMsgForeground ?? this.othersMsgForeground,
      othersMsgBackground: othersMsgBackground ?? this.othersMsgBackground,
      infoMsgForeground: infoMsgForeground ?? this.infoMsgForeground,
      infoMsgBackground: infoMsgBackground ?? this.infoMsgBackground,
      textFieldIcon: textFieldIcon ?? this.textFieldIcon,
      textFieldIconSplash: textFieldIconSplash ?? this.textFieldIconSplash,
      textFieldBackground: textFieldBackground ?? this.textFieldBackground,
      simpleIcon: simpleIcon ?? this.simpleIcon,
      infoMsgPreviewColor: infoMsgPreviewColor ?? this.infoMsgPreviewColor,
      snackBarBackgroundDefault:
          snackBarBackgroundDefault ?? this.snackBarBackgroundDefault,
      casualFilledIconForeground:
          casualFilledIconForeground ?? this.casualFilledIconForeground,
      warningFilledIconForeground:
          warningFilledIconForeground ?? this.warningFilledIconForeground,
      casualFilledIconBackground:
          casualFilledIconBackground ?? this.casualFilledIconBackground,
      warningFilledIconBackground:
          warningFilledIconBackground ?? this.warningFilledIconBackground,
      casualIcon: casualIcon ?? this.casualIcon,
      unselectedCasualIcon: unselectedCasualIcon ?? this.unselectedCasualIcon,
      warningIcon: warningIcon ?? this.warningIcon,
      casualTitle: casualTitle ?? this.casualTitle,
      warningTitle: warningTitle ?? this.warningTitle,
      postBackground: postBackground ?? this.postBackground,
      commentBackground: commentBackground ?? this.commentBackground,
      sectionTitleBackground:
          sectionTitleBackground ?? this.sectionTitleBackground,
      moreImagesForeground: moreImagesForeground ?? this.moreImagesForeground,
      moreImagesBackground: moreImagesBackground ?? this.moreImagesBackground,
      shimmerBase: shimmerBase ?? this.shimmerBase,
      shimmerHighlight: shimmerHighlight ?? this.shimmerHighlight,
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
      avatarBackground: Color.lerp(
        avatarBackground,
        other.avatarBackground,
        t,
      )!,
      avatarForeground: Color.lerp(
        avatarForeground,
        other.avatarForeground,
        t,
      )!,
      unreadIndicatorForeground: Color.lerp(
        unreadIndicatorForeground,
        other.unreadIndicatorForeground,
        t,
      )!,
      unreadIndicatorBackground: Color.lerp(
        unreadIndicatorBackground,
        other.unreadIndicatorBackground,
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
      infoMsgForeground: Color.lerp(
        infoMsgForeground,
        other.infoMsgForeground,
        t,
      )!,
      infoMsgBackground: Color.lerp(
        infoMsgBackground,
        other.infoMsgBackground,
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
      infoMsgPreviewColor: Color.lerp(
        infoMsgPreviewColor,
        other.infoMsgPreviewColor,
        t,
      )!,
      snackBarBackgroundDefault: Color.lerp(
        snackBarBackgroundDefault,
        other.snackBarBackgroundDefault,
        t,
      )!,
      casualFilledIconForeground: Color.lerp(
        casualFilledIconForeground,
        other.casualFilledIconForeground,
        t,
      )!,
      warningFilledIconForeground: Color.lerp(
        warningFilledIconForeground,
        other.warningFilledIconForeground,
        t,
      )!,
      casualFilledIconBackground: Color.lerp(
        casualFilledIconBackground,
        other.casualFilledIconBackground,
        t,
      )!,
      warningFilledIconBackground: Color.lerp(
        warningFilledIconBackground,
        other.warningFilledIconBackground,
        t,
      )!,
      casualIcon: Color.lerp(
        casualIcon,
        other.casualIcon,
        t,
      )!,
      unselectedCasualIcon: Color.lerp(
        unselectedCasualIcon,
        other.unselectedCasualIcon,
        t,
      )!,
      warningIcon: Color.lerp(
        warningIcon,
        other.warningIcon,
        t,
      )!,
      casualTitle: Color.lerp(
        casualTitle,
        other.casualTitle,
        t,
      )!,
      warningTitle: Color.lerp(
        warningTitle,
        other.warningTitle,
        t,
      )!,
      postBackground: Color.lerp(
        postBackground,
        other.postBackground,
        t,
      )!,
      commentBackground: Color.lerp(
        commentBackground,
        other.commentBackground,
        t,
      )!,
      sectionTitleBackground: Color.lerp(
        sectionTitleBackground,
        other.sectionTitleBackground,
        t,
      )!,
      moreImagesForeground: Color.lerp(
        moreImagesForeground,
        other.moreImagesForeground,
        t,
      )!,
      moreImagesBackground: Color.lerp(
        moreImagesBackground,
        other.moreImagesBackground,
        t,
      )!,
      shimmerBase: Color.lerp(
        shimmerBase,
        other.shimmerBase,
        t,
      )!,
      shimmerHighlight: Color.lerp(
        shimmerHighlight,
        other.shimmerHighlight,
        t,
      )!,
    );
  }
}
