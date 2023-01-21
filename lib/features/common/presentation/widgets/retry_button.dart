import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';

class RetryButton extends StatelessWidget {
  const RetryButton({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return ElevatedButton(
      onPressed: onPressed,
      child: Text(l10n.retry_button_title),
    );
  }
}
