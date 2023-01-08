import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../theme/theme.dart';
import '../../../common/domain/domain.dart';

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
    required this.message,
  });

  final UserMessage message;

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
          if (message.readBy.isNotEmpty)
            Icon(
              Icons.done_all,
              size: _readIconSize,
              color: colorSchemeTX.simpleIcon,
            )
          else
            Icon(
              Icons.done,
              size: _readIconSize,
              color: colorSchemeTX.simpleIcon,
            ),
          const SizedBox(
            width: _readIconAndTimeSeparator,
          ),
          Text(
            _beautifiedDateTime(),
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
                message.text,
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

  // TODO: move to another place
  String _beautifiedDateTime() {
    return intl.DateFormat.Hm().format(message.modifiedAt ?? message.sentAt);
  }
}
