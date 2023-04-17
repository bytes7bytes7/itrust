import 'package:flutter/material.dart';

import '../../../../themes/extensions/button_style_tx.dart';

class SmallPrimaryButton extends StatelessWidget {
  const SmallPrimaryButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyleTX.smallPrimary,
      child: child,
    );
  }
}
