import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.navi_not_found_title,
        ),
      ),
      body: Center(
        child: Text(
          l10n.navi_not_found_body,
          style: theme.textTheme.bodyText1,
        ),
      ),
    );
  }
}
