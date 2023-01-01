import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../../theme/theme.dart';

class FadeInCircleAvatar extends StatelessWidget {
  const FadeInCircleAvatar({
    super.key,
    required this.url,
    this.iconData = Icons.person,
  });

  final String? url;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;
    final sizeTX = theme.extension<SizeTX>()!;

    return CircleAvatar(
      backgroundColor: colorSchemeTX.circleAvatarBackground,
      radius: sizeTX.circleAvatarRadius,
      child: url != null
          ? Stack(
              children: [
                const Center(
                  child: CircularProgressIndicator(),
                ),
                Center(
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: url!,
                  ),
                ),
              ],
            )
          : Icon(
              iconData,
              color: colorSchemeTX.circleAvatarForeground,
            ),
    );
  }
}
