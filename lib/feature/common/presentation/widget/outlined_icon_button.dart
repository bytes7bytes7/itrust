import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../theme/theme.dart';
import 'sized_icon.dart';

const _splashRadius = 24.0;
const _iconSize = 24.0;

class OutlinedIconButton extends StatelessWidget {
  const OutlinedIconButton({
    super.key,
    required this.iconPath,
    this.onPressed,
  });

  final String iconPath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return IconButton(
      padding: EdgeInsets.zero,
      splashRadius: _splashRadius,
      constraints: const BoxConstraints(),
      onPressed: onPressed,
      icon: SizedIcon(
        size: _iconSize,
        icon: SvgPicture.asset(
          iconPath,
          color: colorSchemeTX.casualIcon,
        ),
      ),
    );
  }
}
