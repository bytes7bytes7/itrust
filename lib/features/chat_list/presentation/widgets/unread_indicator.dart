import 'package:flutter/material.dart';

import '../../../../themes/themes.dart';

const _borderRadius = 6.0;
const _textPadding = 4.0;

class UnreadIndicator extends StatelessWidget {
  const UnreadIndicator({
    super.key,
    required this.unread,
  });

  final String unread;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        color: colorSchemeTX.unreadIndicatorBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(_textPadding),
        child: Text(
          unread,
          style: theme.textTheme.caption?.copyWith(
            color: colorSchemeTX.unreadIndicatorForeground,
          ),
        ),
      ),
    );
  }
}
