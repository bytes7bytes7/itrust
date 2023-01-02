import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';
import '../../../../theme/theme.dart';

const _paddingH = 20.0;
const _paddingV = 10.0;
const _textFieldAndButtonSeparator = 20.0;

class MessageField extends StatelessWidget {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    final l10n = context.l10n;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
        vertical: _paddingV,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: l10n.message_field_hint,
                prefixIcon: IconButton(
                  iconSize: theme.iconTheme.size,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                  ),
                ),
                suffixIcon: IconButton(
                  iconSize: theme.iconTheme.size,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.attach_file,
                  ),
                ),
              ),
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
