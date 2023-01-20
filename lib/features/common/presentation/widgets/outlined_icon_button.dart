import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'sized_icon.dart';

const _splashRadius = 18.0;
const _iconSize = 24.0;

class OutlinedIconButton extends StatelessWidget {
  const OutlinedIconButton({
    super.key,
    required this.iconPath,
    required this.color,
    this.onPressed,
  });

  final String iconPath;
  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      splashRadius: _splashRadius,
      constraints: const BoxConstraints(),
      onPressed: onPressed,
      icon: SizedIcon(
        size: _iconSize,
        icon: SvgPicture.asset(
          iconPath,
          color: color,
        ),
      ),
    );
  }
}
