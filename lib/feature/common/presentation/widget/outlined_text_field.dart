import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';

const _borderRadius = 10.0;
const _iconPadding = 8.0;

class OutlinedTextField extends StatelessWidget {
  const OutlinedTextField({
    super.key,
    this.controller,
    this.obscureText = false,
    this.hintText,
    this.enabled,
    this.prefix,
    this.suffix,
    this.onPrefixPressed,
    this.onSuffixPressed,
  });

  final TextEditingController? controller;
  final String? hintText;
  final bool? enabled;
  final bool obscureText;
  final Icon? prefix;
  final Icon? suffix;
  final VoidCallback? onPrefixPressed;
  final VoidCallback? onSuffixPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        color: colorSchemeTX.textFieldBackground,
      ),
      child: Row(
        children: [
          if (prefix != null && onPrefixPressed != null)
            _Icon(
              icon: prefix!,
              onPressed: onPrefixPressed!,
            ),
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              enabled: enabled,
              decoration: InputDecoration(
                hintText: hintText,
              ),
            ),
          ),
          if (suffix != null && onSuffixPressed != null)
            _Icon(
              icon: suffix!,
              onPressed: onSuffixPressed!,
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
          splashColor: colorSchemeTX.textFieldIconSplash,
          onPressed: onPressed,
          icon: icon,
          color: colorSchemeTX.textFieldIcon,
        ),
      ),
    );
  }
}
