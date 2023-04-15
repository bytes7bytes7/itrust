import 'package:flutter/material.dart';

import '../../../../themes/extensions/button_style_tx.dart';

class SmallSecondaryButton extends StatelessWidget {
  const SmallSecondaryButton({
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

    return OutlinedButton(
      onPressed: onPressed,
      style: buttonStyleTX.smallSecondary,
      child: Text(
        text,
      ),
    );
  }
}
