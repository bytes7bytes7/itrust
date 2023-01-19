import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/themes.dart';
import 'sized_icon.dart';

const _paddingV = 24.0;
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
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: _paddingV,
        ),
        child: Column(
          children: [
            Container(
              height: _userAvatarSize,
              width: _userAvatarSize,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  _userAvatarBorderRadius,
                ),
                color: colorSchemeTX.avatarBackground,
              ),
              child: hasAvatar
                  ? CachedNetworkImage(
                      imageUrl: avatarUrl!,
                      imageBuilder: (context, imageProvider) {
                        return Container(
                          height: _userAvatarSize,
                          width: _userAvatarSize,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: imageProvider,
                            ),
                          ),
                        );
                      },
                      errorWidget: (context, url, error) {
                        return SizedIcon(
                          size: _userIconSize,
                          icon: Assets.image.svg.person.svg(
                            color: colorSchemeTX.avatarForeground,
                          ),
                        );
                      },
                    )
                  : SizedIcon(
                      size: _userIconSize,
                      icon: Assets.image.svg.addAPhoto.svg(
                        color: colorSchemeTX.avatarForeground,
                      ),
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
      ),
    );
  }
}
