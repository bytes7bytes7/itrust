import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.feed_tab_title,
        ),
      ),
    );
  }
}
