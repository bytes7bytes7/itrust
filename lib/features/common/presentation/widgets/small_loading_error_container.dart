import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';
import 'retry_button.dart';

const _paddingH = 20.0;
const _paddingV = 14.0;
const _titleAndButtonPadding = 20.0;

class SmallLoadingErrorContainer extends StatelessWidget {
  const SmallLoadingErrorContainer({
    super.key,
    required this.onRetry,
  });

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
        vertical: _paddingV,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            l10n.error_during_loading,
            style: theme.textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: _titleAndButtonPadding,
          ),
          RetryButton(
            onPressed: onRetry,
          ),
        ],
      ),
    );
  }
}
