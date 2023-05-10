import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/themes.dart';
import '../../common.dart';
import 'custom_circle_avatar.dart';

const _outerRadius = 8.0;
const _innerRadius = 6.0;

enum ChatCircleAvatarType {
  monologue,
  dialogue,
  group,
}

class ChatCircleAvatar extends StatelessWidget {
  const ChatCircleAvatar({
    super.key,
    required this.type,
    this.online,
    this.url,
    this.iconName,
  });

  final ChatCircleAvatarType type;
  final bool? online;
  final String? url;
  final String? iconName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        _getAvatar(),
        if (type == ChatCircleAvatarType.dialogue && online == true)
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

  Widget _getAvatar() {
    switch (type) {
      case ChatCircleAvatarType.monologue:
        return CustomCircleAvatar(
          url: url,
          iconPath: iconName ?? Assets.image.svg.bookmark.path,
        );
      case ChatCircleAvatarType.dialogue:
        return CustomCircleAvatar(
          url: url,
          iconPath: Assets.image.svg.person.path,
        );
      case ChatCircleAvatarType.group:
        return CustomCircleAvatar(
          url: url,
          iconPath: Assets.image.svg.group.path,
        );
    }
  }
}
