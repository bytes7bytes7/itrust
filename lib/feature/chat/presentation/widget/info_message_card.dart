import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../theme/theme.dart';
import '../../../common/domain/domain.dart';

const _paddingH = 20.0;
const _paddingV = 6.0;
const _borderRadius = 10.0;
const _messageBodyMaxRatio = 0.8;
const _messageBodyPadding = 10.0;
const _messageAndTimeSeparator = 4.0;

class InfoMessageCard extends StatelessWidget {
  const InfoMessageCard({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: _paddingH,
          vertical: _paddingV,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: _messageBodyMaxRatio * size.width,
          ),
          child: Container(
            padding: const EdgeInsets.all(_messageBodyPadding),
            decoration: BoxDecoration(
              color: colorSchemeTX.infoMsgBackground,
              borderRadius: const BorderRadius.all(
                Radius.circular(_borderRadius),
              ),
            ),
            child: Column(
              children: [
                Text(
                  _beautifiedDateTime(),
                  style: message.text.isNotEmpty
                      ? theme.textTheme.headline6
                      : theme.textTheme.bodyText1,
                ),
                if (message.text.isNotEmpty) ...[
                  const SizedBox(
                    width: _messageAndTimeSeparator,
                  ),
                  Text(
                    message.text,
                    style: theme.textTheme.bodyText1?.copyWith(
                      color: colorSchemeTX.infoMsgForeground,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  // TODO: move to another place
  String _beautifiedDateTime() {
    return intl.DateFormat.Hm().format(message.modifiedAt ?? message.sentAt);
  }
}
