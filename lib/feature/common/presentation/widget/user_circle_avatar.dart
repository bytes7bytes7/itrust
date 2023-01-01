import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';
import '../../domain/domain.dart';
import 'fade_in_circle_avatar.dart';

const _outerRadius = 7.0;
const _innerRadius = 5.0;

class UserCircleAvatar extends StatelessWidget {
  const UserCircleAvatar({
    super.key,
    required this.onlineStatus,
    this.url,
  });

  final String? url;
  final OnlineStatus onlineStatus;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        FadeInCircleAvatar(
          url: url,
          iconData: Icons.person,
        ),
        if (onlineStatus is IsOnlineStatus)
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
