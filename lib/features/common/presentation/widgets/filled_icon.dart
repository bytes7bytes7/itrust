import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../themes/themes.dart';
import 'sized_icon.dart';

const _borderRadius = 5.0;
const _defaultIconSize = 24.0;
const _iconPadding = 2.0;

class FilledIcon extends StatelessWidget {
  const FilledIcon({
    super.key,
    required this.iconPath,
    this.iconSize = _defaultIconSize,
    bool? isWarning,
  }) : isWarning = isWarning ?? false;

  final String iconPath;
  final double iconSize;
  final bool isWarning;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        color: isWarning
            ? colorSchemeTX.warningFilledIconBackground
            : colorSchemeTX.casualFilledIconBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(_iconPadding),
        child: SizedIcon(
          size: iconSize,
          icon: SvgPicture.asset(
            iconPath,
            color: isWarning
                ? colorSchemeTX.warningFilledIconForeground
                : colorSchemeTX.casualFilledIconForeground,
          ),
        ),
      ),
    );
  }
}
