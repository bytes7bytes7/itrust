import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../l10n/l10n.dart';
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

    final l10n = context.l10n;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        color: colorSchemeTX.unreadBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(_textPadding),
        child: Text(
          _formattedAmount(l10n),
          style: theme.textTheme.caption,
        ),
      ),
    );
  }

  // TODO: move logic
  String _formattedAmount(AppLocalizations l10n) {
    const billion = 1000000000;
    const million = 1000000;
    const thousand = 1000;

    if (unread >= billion) {
      return '${(unread / billion).toStringWithLimitedPrecision(
        _precision,
        floor: true,
      )}${l10n.billion_suffix}';
    }

    if (unread >= million) {
      return '${(unread / million).toStringWithLimitedPrecision(
        _precision,
        floor: true,
      )}${l10n.million_suffix}';
    }

    if (unread >= thousand) {
      return '${(unread / thousand).toStringWithLimitedPrecision(
        _precision,
        floor: true,
      )}${l10n.thousand_suffix}';
    }

    return '$unread';
  }
}
