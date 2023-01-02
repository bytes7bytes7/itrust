import 'package:flutter/material.dart';

import '../../../chat_list/presentation/screen/chat_list_screen.dart';

final _screens = [
  const ChatListScreen(),
];

class MasterScreen extends StatelessWidget {
  const MasterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Master Screen',
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            final widget = _screens[index];

            return TextButton(
              onPressed: () => _goTo(context, widget),
              child: Text('${widget.runtimeType}'),
            );
          },
        ),
      ),
    );
  }

  void _goTo(BuildContext context, Widget child) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => child,
      ),
    );
  }
}
