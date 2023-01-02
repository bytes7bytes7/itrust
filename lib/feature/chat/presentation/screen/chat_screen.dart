import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    return Scaffold(
      appBar: AppBar(
        leading: Align(
          child: ElevatedButton(
            style: buttonStyleTX.filledIcon,
            onPressed: () {},
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
      ),
    );
  }
}
