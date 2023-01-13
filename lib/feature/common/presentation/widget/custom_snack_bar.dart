import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';

const _duration = Duration(seconds: 3);
const _margin = EdgeInsets.symmetric(
  horizontal: 20,
);
const _borderRadius = 10.0;

class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;
    final snackBarTheme = theme.snackBarTheme;

    return Flushbar(
      messageText: Text(
        message,
        style: snackBarTheme.contentTextStyle,
      ),
      backgroundColor: snackBarTheme.backgroundColor ??
          colorSchemeTX.snackBarBackgroundDefault,
      duration: _duration,
      margin: _margin,
      flushbarPosition: FlushbarPosition.TOP,
      borderRadius: BorderRadius.circular(_borderRadius),
    )..show(context);
  }
}
