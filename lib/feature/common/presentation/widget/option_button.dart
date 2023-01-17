import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../theme/theme.dart';
import 'filled_icon.dart';
import 'sized_icon.dart';

const _iconSize = 24.0;
const _paddingH = 20.0;
const _paddingV = 18.0;
const _titlePaddingH = 10.0;

final _defaultTrailingIconPath = Assets.image.svg.keyboardArrowRight.path;

class OptionButton extends StatelessWidget {
  const OptionButton({
    super.key,
    required this.iconPath,
    required this.title,
    this.trailingIconPath,
    this.showTrailing = true,
    this.isWarning,
    this.onPressed,
  });

  final String iconPath;
  final String title;
  final bool showTrailing;
  final String? trailingIconPath;
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
              iconPath: iconPath,
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
              SizedIcon(
                size: _iconSize,
                icon: SvgPicture.asset(
                  trailingIconPath ?? _defaultTrailingIconPath,
                  color: isWarning == true
                      ? colorSchemeTX.warningIcon
                      : colorSchemeTX.casualIcon,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
