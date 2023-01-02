import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../theme/theme.dart';
import '../../../common/domain/domain.dart';

const _paddingH = 20.0;
const _paddingV = 6.0;
const _borderRadius = 10.0;
const _messageBodyMaxRatio = 0.5;
const _messageBodyPadding = 10.0;
const _messageAndTimeSeparator = 14.0;

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.message,
  });

  final Message message;

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
                color: colorSchemeTX.otherMsgBodyBackground,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.circular(_borderRadius),
                  bottomRight: Radius.circular(_borderRadius),
                  bottomLeft: Radius.circular(_borderRadius),
                ),
              ),
              child: Text(
                message.text,
                style: theme.textTheme.bodyText1,
              ),
            ),
          ),
          const SizedBox(
            width: _messageAndTimeSeparator,
          ),
          Text(
            _beautifiedDateTime(),
            style: theme.textTheme.headline6,
          ),
        ],
      ),
    );
  }

  String _beautifiedDateTime() {
    return DateFormat.Hm().format(message.modifiedAt ?? message.sentAt);
  }
}
