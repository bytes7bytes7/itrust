import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import 'filled_icon_button.dart';
import 'outlined_text_field.dart';

const _paddingH = 20.0;
const _paddingV = 10.0;
const _textFieldAndButtonSeparator = 20.0;

class MessageField extends StatelessWidget {
  const MessageField({
    super.key,
    required this.hint,
    required this.onSendPressed,
    this.onEmojiPressed,
    this.onAttachFilePressed,
  });

  final String hint;
  final VoidCallback? onEmojiPressed;
  final VoidCallback? onAttachFilePressed;
  final VoidCallback onSendPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
        vertical: _paddingV,
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedTextField(
              hintText: hint,
              prefixIconPath: Assets.image.svg.emoji.path,
              suffixIconPath: Assets.image.svg.attachFile.path,
              onPrefixPressed: onEmojiPressed,
              onSuffixPressed: onAttachFilePressed,
            ),
          ),
          const SizedBox(
            width: _textFieldAndButtonSeparator,
          ),
          FilledIconButton(
            iconPath: Assets.image.svg.send.path,
            onPressed: onSendPressed,
          ),
        ],
      ),
    );
  }
}
