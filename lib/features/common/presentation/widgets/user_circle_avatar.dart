import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/themes.dart';
import 'custom_circle_avatar.dart';

const _outerRadius = 8.0;
const _innerRadius = 6.0;

class UserCircleAvatar extends StatelessWidget {
  const UserCircleAvatar({
    super.key,
    required this.online,
    this.url,
  });

  final bool online;
  final String? url;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomCircleAvatar(
          url: url,
          iconPath: Assets.image.svg.person.path,
        ),
        if (online)
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: colorSchemeTX.onlineMarkStroke,
              radius: _outerRadius,
              child: CircleAvatar(
                backgroundColor: colorSchemeTX.onlineMarkCenter,
                radius: _innerRadius,
              ),
            ),
          ),
      ],
    );
  }
}
