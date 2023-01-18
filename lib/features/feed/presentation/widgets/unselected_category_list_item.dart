import 'package:flutter/material.dart';

import '../../../../themes/themes.dart';

const _paddingH = 10.0;

class UnselectedCategoryListItem extends StatelessWidget {
  const UnselectedCategoryListItem({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
      ),
      child: OutlinedButton(
        style: buttonStyleTX.unselectedCategoryItem,
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
