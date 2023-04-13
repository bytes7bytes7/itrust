import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../utils/typedef.dart';
import 'filled_icon_button.dart';
import 'outlined_text_field.dart';

const _paddingH = 20.0;
const _paddingV = 10.0;
const _textFieldAndButtonSeparator = 20.0;

class MessageField extends HookWidget {
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
  final OnSendPressed onSendPressed;

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    final focusNode = useFocusNode();

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
        vertical: _paddingV,
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedTextField(
              controller: textController,
              hintText: hint,
              prefixIconPath: Assets.image.svg.emoji.path,
              suffixIconPath: Assets.image.svg.attachFile.path,
              onPrefixPressed: onEmojiPressed,
              onSuffixPressed: onAttachFilePressed,
              focusNode: focusNode,
            ),
          ),
          const SizedBox(
            width: _textFieldAndButtonSeparator,
          ),
          FilledIconButton(
            iconPath: Assets.image.svg.send.path,
            onPressed: () {
              onSendPressed.call(textController.text);
              textController.clear();
              focusNode.unfocus();
            },
          ),
        ],
      ),
    );
  }
}
