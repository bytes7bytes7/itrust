import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/themes.dart';
import 'custom_cached_network_image.dart';
import 'sized_icon.dart';

const _radius = 28.0;
const _loadingPadding = 4.0;
const _loadingStrokeWidth = 2.0;
const _iconSize = 24.0;

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.url,
    required this.iconPath,
  });

  final String? url;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return CircleAvatar(
      backgroundColor: colorSchemeTX.avatarBackground,
      radius: _radius,
      child: url != null
          ? CustomCachedNetworkImage(
              imageUrl: url!,
              imageBuilder: (context, imageProvider) {
                return Container(
                  height: _radius * 2,
                  width: _radius * 2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: imageProvider,
                    ),
                  ),
                );
              },
              placeholder: (context, url) {
                return Padding(
                  padding: const EdgeInsets.all(_loadingPadding),
                  child: CircularProgressIndicator(
                    color: colorSchemeTX.avatarForeground,
                    strokeWidth: _loadingStrokeWidth,
                  ),
                );
              },
              errorWidget: (context, url, error) {
                return _AvatarIcon(
                  colorSchemeTX: colorSchemeTX,
                );
              },
            )
          : SizedIcon(
              size: _iconSize,
              icon: SvgPicture.asset(
                iconPath,
                color: colorSchemeTX.avatarForeground,
              ),
            ),
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
