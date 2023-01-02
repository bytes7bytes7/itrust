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

// TODO: get from store
const _myID = 'myID';

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

    final isMe = message.sender.id == _myID;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
        vertical: _paddingV,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        textDirection: isMe ? TextDirection.rtl : TextDirection.ltr,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: _messageBodyMaxRatio * size.width,
            ),
            child: Container(
              padding: const EdgeInsets.all(_messageBodyPadding),
              decoration: BoxDecoration(
                color: isMe
                    ? colorSchemeTX.myMsgBackground
                    : colorSchemeTX.othersMsgBackground,
                borderRadius: BorderRadius.only(
                  topLeft:
                      isMe ? const Radius.circular(_borderRadius) : Radius.zero,
                  topRight:
                      isMe ? const Radius.circular(_borderRadius) : Radius.zero,
                  bottomRight: const Radius.circular(_borderRadius),
                  bottomLeft: const Radius.circular(_borderRadius),
                ),
              ),
              child: Text(
                message.text,
                style: theme.textTheme.bodyText1?.copyWith(
                  color: isMe
                      ? colorSchemeTX.myMsgForeground
                      : colorSchemeTX.othersMsgForeground,
                ),
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
          if (isMe)
            const SizedBox(
              width: _readIconAndTimeSeparator,
            ),
          if (isMe)
            message.isRead
                ? Icon(
                    Icons.done_all,
                    size: _readIconSize,
                    color: colorSchemeTX.simpleIcon,
                  )
                : Icon(
                    Icons.done,
                    size: _readIconSize,
                    color: colorSchemeTX.simpleIcon,
                  ),
        ],
      ),
    );
  }

  // TODO: move to another place
  String _beautifiedDateTime() {
    return intl.DateFormat.Hm().format(message.modifiedAt ?? message.sentAt);
  }
}
