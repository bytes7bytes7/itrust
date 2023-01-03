import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.menu_tab_title,
        ),
      ),
    );
  }
}
