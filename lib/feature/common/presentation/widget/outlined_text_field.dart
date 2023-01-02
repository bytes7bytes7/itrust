import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';
import '../../../../theme/theme.dart';

const _borderRadius = 10.0;
const _iconPadding = 8.0;

class OutlinedTextField extends StatelessWidget {
  const OutlinedTextField({
    super.key,
    required this.prefix,
    required this.suffix,
    required this.onPrefixPressed,
    required this.onSuffixPressed,
  });

  final Icon prefix;
  final Icon suffix;
  final VoidCallback onPrefixPressed;
  final VoidCallback onSuffixPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    final l10n = context.l10n;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        color: colorSchemeTX.textFieldBackground,
      ),
      child: Row(
        children: [
          _Icon(
            icon: prefix,
            onPressed: onPrefixPressed,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: l10n.message_field_hint,
              ),
            ),
          ),
          _Icon(
            icon: suffix,
            onPressed: onSuffixPressed,
          ),
        ],
      ),
    );
  }
}

class _Icon extends StatelessWidget {
  const _Icon({
    required this.icon,
    required this.onPressed,
  });

  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return ClipOval(
      child: Material(
        color: colorSchemeTX.textFieldBackground,
        child: IconButton(
          padding: const EdgeInsets.all(_iconPadding),
          iconSize: theme.iconTheme.size,
          splashColor: colorSchemeTX.iconSplash,
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
