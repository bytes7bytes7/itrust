import 'package:flutter/material.dart';

import '../../../../themes/themes.dart';

const _marginV = 4.0;
const _paddingH = 20.0;
const _paddingV = 10.0;

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: _marginV,
      ),
      child: SizedBox(
        width: double.infinity,
        child: ColoredBox(
          color: colorSchemeTX.sectionTitleBackground,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: _paddingH,
              vertical: _paddingV,
            ),
            child: Text(
              title,
              style: theme.textTheme.subtitle2,
            ),
          ),
        ),
      ),
    );
  }
}
