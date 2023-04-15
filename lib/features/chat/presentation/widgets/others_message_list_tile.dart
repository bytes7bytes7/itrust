import 'package:flutter/material.dart';

import '../../../../themes/themes.dart';

const _paddingH = 20.0;
const _paddingV = 6.0;
const _borderRadius = 10.0;
const _messageBodyMaxRatio = 0.5;
const _messageBodyPadding = 10.0;
const _messageAndTimeSeparator = 14.0;
const _messageAndAuthorSeparator = 4.0;

class OthersMessageListTile extends StatelessWidget {
  const OthersMessageListTile({
    super.key,
    required this.showSender,
    required this.senderName,
    required this.text,
    required this.dateTime,
  });

  // TODO: add media support
  final bool showSender;
  final String senderName;
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: _messageBodyMaxRatio * size.width,
            ),
            child: Container(
              padding: const EdgeInsets.all(_messageBodyPadding),
              decoration: BoxDecoration(
                color: colorSchemeTX.othersMsgBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: _radius,
                  bottomRight: _radius,
                  bottomLeft: _radius,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (showSender) ...[
                    Text(
                      senderName,
                      style: theme.textTheme.caption,
                    ),
                    const SizedBox(
                      height: _messageAndAuthorSeparator,
                    ),
                  ],
                  Text(
                    text,
                    style: theme.textTheme.bodyText1?.copyWith(
                      color: colorSchemeTX.othersMsgForeground,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: _messageAndTimeSeparator,
          ),
          Text(
            dateTime,
            style: theme.textTheme.headline6,
          ),
        ],
      ),
    );
  }

  Radius get _radius => const Radius.circular(_borderRadius);
}
