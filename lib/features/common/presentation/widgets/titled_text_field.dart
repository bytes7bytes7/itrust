import 'package:flutter/material.dart';

import '../../common.dart';

const _paddingV = 10.0;
const _separator = 10.0;

class TitledTextField extends StatelessWidget {
  const TitledTextField({
    super.key,
    required this.title,
    this.initialText,
    this.controller,
    this.onChanged,
    this.obscureText,
    this.hintText,
    this.enabled,
    this.prefixIconPath,
    this.suffixIconPath,
    this.onPrefixPressed,
    this.onSuffixPressed,
  });

  final String title;

  // Text field params
  final String? initialText;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? hintText;
  final bool? enabled;
  final bool? obscureText;
  final String? prefixIconPath;
  final String? suffixIconPath;
  final VoidCallback? onPrefixPressed;
  final VoidCallback? onSuffixPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: _paddingV,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.bodyText2,
          ),
          const SizedBox(
            height: _separator,
          ),
          OutlinedTextField(
            initialText: initialText,
            controller: controller,
            onChanged: onChanged,
            hintText: hintText,
            enabled: enabled,
            obscureText: obscureText,
            prefixIconPath: prefixIconPath,
            suffixIconPath: suffixIconPath,
            onPrefixPressed: onPrefixPressed,
            onSuffixPressed: onSuffixPressed,
          ),
        ],
      ),
    );
  }
}
