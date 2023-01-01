import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';
import '../../../../util/extension/double_x.dart';

const _borderRadius = 6.0;
const _textPadding = 4.0;
const _precision = 1;

class UnreadIndicator extends StatelessWidget {
  const UnreadIndicator({
    super.key,
    required this.unread,
  });

  final int unread;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        color: colorSchemeTX.unreadBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(_textPadding),
        child: Text(
          _formattedAmount(),
          style: theme.textTheme.caption,
        ),
      ),
    );
  }

  // TODO: add l10n
  String _formattedAmount() {
    const billion = 1000000000;
    const million = 1000000;
    const thousand = 1000;

    if (unread >= billion) {
      return '${(unread / billion).toStringWithLimitedPrecision(
        _precision,
        floor: true,
      )}G';
    }

    if (unread >= million) {
      return '${(unread / million).toStringWithLimitedPrecision(
        _precision,
        floor: true,
      )}M';
    }

    if (unread >= thousand) {
      return '${(unread / thousand).toStringWithLimitedPrecision(
        _precision,
        floor: true,
      )}K';
    }

    return '$unread';
  }
}
