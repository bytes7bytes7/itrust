import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../theme/theme.dart';
import '../../../common/common.dart';

const _paddingH = 20.0;
const _paddingV = 6.0;
const _borderRadius = 10.0;
const _messageBodyMaxRatio = 0.5;
const _messageBodyPadding = 10.0;
const _messageAndTimeSeparator = 14.0;
const _readIconAndTimeSeparator = 6.0;
const _readIconSize = 12.0;

class MyMessageCard extends StatelessWidget {
  const MyMessageCard({
    super.key,
    required this.isRead,
    required this.text,
    required this.dateTime,
  });

  // TODO: add media support
  final bool isRead;
  final String text;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
        vertical: _paddingV,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // TODO: adapt for readBy
          if (isRead)
            SizedIcon(
              size: _readIconSize,
              icon: Assets.image.svg.doneAll.svg(
                color: colorSchemeTX.simpleIcon,
              ),
            )
          else
            SizedIcon(
              size: _readIconSize,
              icon: Assets.image.svg.done.svg(
                color: colorSchemeTX.simpleIcon,
              ),
            ),
          const SizedBox(
            width: _readIconAndTimeSeparator,
          ),
          Text(
            dateTime,
            style: theme.textTheme.headline6,
          ),
          const SizedBox(
            width: _messageAndTimeSeparator,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: _messageBodyMaxRatio * size.width,
            ),
            child: Container(
              padding: const EdgeInsets.all(_messageBodyPadding),
              decoration: BoxDecoration(
                color: colorSchemeTX.myMsgBackground,
                borderRadius: BorderRadius.only(
                  topLeft: _radius,
                  topRight: Radius.zero,
                  bottomRight: _radius,
                  bottomLeft: _radius,
                ),
              ),
              child: Text(
                text,
                style: theme.textTheme.bodyText1?.copyWith(
                  color: colorSchemeTX.myMsgForeground,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Radius get _radius => const Radius.circular(_borderRadius);
}
