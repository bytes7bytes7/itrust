import 'package:flutter/material.dart';

import '../../../../themes/extensions/button_style_tx.dart';

class SmallPrimaryButton extends StatelessWidget {
  const SmallPrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyleTX.smallElevated,
      child: Text(
        text,
        style: theme.textTheme.caption?.copyWith(
          color: theme.scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
