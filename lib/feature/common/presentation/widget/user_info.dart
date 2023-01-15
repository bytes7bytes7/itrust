import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';

const _userAvatarBorderRadius = 8.0;
const _userAvatarSize = 100.0;
const _userIconSize = 32.0;

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.id,
    this.avatarUrl,
    this.nameOrEmail,
  });

  final String id;
  final String? avatarUrl;
  final String? nameOrEmail;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    final hasAvatar = avatarUrl != null;
    final hasNameOrEmail = nameOrEmail != null;

    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: _userAvatarSize,
            width: _userAvatarSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                _userAvatarBorderRadius,
              ),
              color: colorSchemeTX.avatarBackground,
            ),
            clipBehavior: Clip.hardEdge,
            child: hasAvatar
                ? Image.network(
                    avatarUrl!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.person,
                        color: colorSchemeTX.avatarForeground,
                      );
                    },
                  )
                : Icon(
                    Icons.add_a_photo,
                    size: _userIconSize,
                    color: colorSchemeTX.avatarForeground,
                  ),
          ),
          if (hasNameOrEmail)
            Text(
              nameOrEmail!,
              style: theme.textTheme.headline3,
            ),
          Text(
            id,
            style: theme.textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
