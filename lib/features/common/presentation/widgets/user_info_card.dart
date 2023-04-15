import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/themes.dart';
import 'custom_cached_network_image.dart';
import 'sized_icon.dart';

const _paddingV = 24.0;
const _userAvatarBorderRadius = 8.0;
const _userAvatarSize = 100.0;
const _userIconSize = 32.0;

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({
    super.key,
    required this.id,
    required this.name,
    this.nick,
    this.avatarUrl,
  });

  final String id;
  final String name;
  final String? nick;
  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    final hasAvatar = avatarUrl != null;

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
                  ? CustomCachedNetworkImage(
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
            Text(
              name,
              style: theme.textTheme.headline3,
            ),
            Text(
              nick ?? id,
              style: theme.textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
