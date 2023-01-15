import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';

class FilledIconButton extends StatelessWidget {
  const FilledIconButton({
    super.key,
    required this.iconData,
    this.iconSize,
    this.onPressed,
  });

  final IconData iconData;
  final double? iconSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    return Align(
      child: ElevatedButton(
        style: buttonStyleTX.filledIcon,
        onPressed: onPressed,
        child: Icon(
          iconData,
          size: iconSize,
        ),
      ),
    );
  }
}
