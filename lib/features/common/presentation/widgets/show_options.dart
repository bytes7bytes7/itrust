import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../themes/themes.dart';

class OptionItem {
  const OptionItem({
    required this.text,
    required this.iconPath,
    required this.onPressed,
  });

  final String text;
  final String iconPath;
  final VoidCallback onPressed;
}

void showOptions({
  required BuildContext context,
  required List<OptionItem> items,
}) {
  final theme = Theme.of(context);
  final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

  showMenu(
    context: context,
    position: const RelativeRect.fromLTRB(
      double.maxFinite,
      0,
      0,
      double.maxFinite,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide.none,
    ),
    items: items.map((e) {
      return PopupMenuItem(
        onTap: e.onPressed,
        child: Row(
          children: [
            SvgPicture.asset(
              e.iconPath,
              color: colorSchemeTX.simpleIcon,
            ),
            const SizedBox(width: 12),
            Text(
              e.text,
              style: theme.textTheme.bodyText1,
            ),
          ],
        ),
      );
    }).toList(),
  );
}
