import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';
import 'filled_icon.dart';

const _iconSize = 24.0;
const _paddingH = 20.0;
const _paddingV = 18.0;
const _titlePaddingH = 10.0;

class OptionButton extends StatelessWidget {
  const OptionButton({
    super.key,
    required this.iconData,
    required this.title,
    this.showTrailing = true,
    this.trailingIconData = Icons.keyboard_arrow_right_outlined,
    this.isWarning,
    this.onPressed,
  });

  final IconData iconData;
  final String title;
  final bool showTrailing;
  final IconData trailingIconData;
  final bool? isWarning;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return MaterialButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: _paddingH,
          vertical: _paddingV,
        ),
        child: Row(
          children: [
            FilledIcon(
              iconData: iconData,
              iconSize: _iconSize,
              isWarning: isWarning,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _titlePaddingH,
                ),
                child: Text(
                  title,
                  style: theme.textTheme.headline4?.copyWith(
                    color: isWarning == true
                        ? colorSchemeTX.warningTitle
                        : colorSchemeTX.casualTitle,
                  ),
                ),
              ),
            ),
            if (showTrailing)
              Icon(
                trailingIconData,
                size: _iconSize,
                color: isWarning == true
                    ? colorSchemeTX.warningIcon
                    : colorSchemeTX.casualIcon,
              ),
          ],
        ),
      ),
    );
  }
}
