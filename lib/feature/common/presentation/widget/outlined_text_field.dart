import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../theme/theme.dart';
import 'sized_icon.dart';

const _borderRadius = 10.0;
const _iconPadding = 8.0;
const _iconSize = 24.0;

class OutlinedTextField extends StatelessWidget {
  const OutlinedTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.obscureText = false,
    this.hintText,
    this.enabled,
    this.prefixIconPath,
    this.suffixIconPath,
    this.onPrefixPressed,
    this.onSuffixPressed,
  });

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? hintText;
  final bool? enabled;
  final bool obscureText;
  final String? prefixIconPath;
  final String? suffixIconPath;
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
          if (prefixIconPath != null && onPrefixPressed != null)
            _Icon(
              iconPath: prefixIconPath!,
              onPressed: onPrefixPressed!,
            ),
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              enabled: enabled,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hintText,
              ),
            ),
          ),
          if (suffixIconPath != null && onSuffixPressed != null)
            _Icon(
              iconPath: suffixIconPath!,
              onPressed: onSuffixPressed!,
            ),
        ],
      ),
    );
  }
}

class _Icon extends StatelessWidget {
  const _Icon({
    required this.iconPath,
    required this.onPressed,
  });

  final String iconPath;
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
          iconSize: _iconSize,
          splashColor: colorSchemeTX.textFieldIconSplash,
          onPressed: onPressed,
          icon: SizedIcon(
            size: _iconSize,
            icon: SvgPicture.asset(
              iconPath,
              color: colorSchemeTX.textFieldIcon,
            ),
          ),
        ),
      ),
    );
  }
}
