import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../themes/themes.dart';
import 'sized_icon.dart';

const _iconSize = 24.0;

class FilledIconButton extends StatelessWidget {
  const FilledIconButton({
    super.key,
    required this.iconPath,
    this.onPressed,
  });

  final String iconPath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX= theme.extension<ColorSchemeTX>()!;
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    return Align(
      child: ElevatedButton(
        style: buttonStyleTX.filledIcon,
        onPressed: onPressed,
        child: SizedIcon(
          size: _iconSize,
          icon: SvgPicture.asset(
            iconPath,
            color: colorSchemeTX.casualFilledIconForeground,
          ),
        ),
      ),
    );
  }
}
