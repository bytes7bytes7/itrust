import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../../themes/themes.dart';
import 'sized_icon.dart';

const _radius = 28.0;
const _loadingPadding = 4.0;
const _loadingStrokeWidth = 2.0;
const _iconSize = 24.0;

class FadeInCircleAvatar extends StatelessWidget {
  const FadeInCircleAvatar({
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
      child: ClipOval(
        child: url != null
            ? Stack(
                children: [
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.all(_loadingPadding),
                      child: CircularProgressIndicator(
                        color: colorSchemeTX.avatarForeground,
                        strokeWidth: _loadingStrokeWidth,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: url!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            : SizedIcon(
                size: _iconSize,
                icon: SvgPicture.asset(
                  iconPath,
                  color: colorSchemeTX.avatarForeground,
                ),
              ),
      ),
    );
  }
}
