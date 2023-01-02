import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';
import '../../../common/presentation/widget/widget.dart';

const _paddingH = 20.0;
const _paddingV = 10.0;
const _textFieldAndButtonSeparator = 20.0;

class MessageField extends StatelessWidget {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
        vertical: _paddingV,
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedTextField(
              prefix: const Icon(
                Icons.emoji_emotions_outlined,
              ),
              suffix: const Icon(
                Icons.attach_file,
              ),
              onPrefixPressed: () {},
              onSuffixPressed: () {},
            ),
          ),
          const SizedBox(
            width: _textFieldAndButtonSeparator,
          ),
          Align(
            child: ElevatedButton(
              style: buttonStyleTX.roundedFilledIcon,
              onPressed: () {},
              child: const Icon(
                Icons.send,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
