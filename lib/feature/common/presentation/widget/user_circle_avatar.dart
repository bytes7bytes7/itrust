import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../theme/theme.dart';
import 'fade_in_circle_avatar.dart';

const _outerRadius = 8.0;
const _innerRadius = 6.0;

class UserCircleAvatar extends StatelessWidget {
  const UserCircleAvatar({
    super.key,
    required this.online,
    this.url,
  });

  final String? url;
  final bool online;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        FadeInCircleAvatar(
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
