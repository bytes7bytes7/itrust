import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';
import '../../../common/presentation/widget/widget.dart';

const _paddingH = 20.0;
const _paddingV = 10.0;
const _textFieldAndButtonSeparator = 20.0;

class MessageField extends StatelessWidget {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
        vertical: _paddingV,
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedTextField(
              hintText: l10n.message_field_hint,
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
          FilledIconButton(
            iconData: Icons.send,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
