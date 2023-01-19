import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/themes.dart';
import '../../common.dart';

const _avatarSize = 40.0;
const _imageBorderRadius = 8.0;
const _avatarAndTitleSeparator = 22.0;
const _iconSize = 24.0;

class AuthorCardHeader extends StatelessWidget {
  const AuthorCardHeader({
    super.key,
    required this.name,
    required this.dateTime,
    this.avatarUrl,
  });

  final String name;
  final String dateTime;
  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Row(
      children: [
        Container(
          height: _avatarSize,
          width: _avatarSize,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              _imageBorderRadius,
            ),
            color: colorSchemeTX.avatarBackground,
          ),
          child: avatarUrl != null
              ? CachedNetworkImage(
                  imageUrl: avatarUrl!,
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      height: _avatarSize,
                      width: _avatarSize,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: imageProvider,
                        ),
                      ),
                    );
                  },
                  errorWidget: (context, url, error) {
                    return _AvatarIcon(
                      colorSchemeTX: colorSchemeTX,
                    );
                  },
                )
              : _AvatarIcon(
                  colorSchemeTX: colorSchemeTX,
                ),
        ),
        const SizedBox(
          width: _avatarAndTitleSeparator,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: theme.textTheme.headline5,
            ),
            Text(
              dateTime,
              style: theme.textTheme.bodyText2,
            ),
          ],
        ),
      ],
    );
  }
}

class _AvatarIcon extends StatelessWidget {
  const _AvatarIcon({
    required this.colorSchemeTX,
  });

  final ColorSchemeTX colorSchemeTX;

  @override
  Widget build(BuildContext context) {
    return SizedIcon(
      size: _iconSize,
      icon: Assets.image.svg.person.svg(
        color: colorSchemeTX.avatarForeground,
      ),
    );
  }
}
