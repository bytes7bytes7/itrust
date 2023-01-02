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

class OthersMessageCard extends StatelessWidget {
  const OthersMessageCard({
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
                color: colorSchemeTX.othersMsgBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: _radius,
                  bottomRight: _radius,
                  bottomLeft: _radius,
                ),
              ),
              child: Text(
                message.text,
                style: theme.textTheme.bodyText1?.copyWith(
                  color: colorSchemeTX.othersMsgForeground,
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
