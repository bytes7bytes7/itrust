import 'package:flutter/material.dart';

import '../../../../themes/extensions/button_style_tx.dart';

const _strokeWidth = 2.0;

class ActionPrimaryLoadingIndicator extends StatelessWidget {
  const ActionPrimaryLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;
    final style = buttonStyleTX.smallPrimary;

    final size = style.textStyle?.resolve({MaterialState.focused})?.fontSize;

    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        color: style.foregroundColor?.resolve({MaterialState.focused}),
        strokeWidth: _strokeWidth,
      ),
    );
  }
}
