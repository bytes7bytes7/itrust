import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../theme/theme.dart';
import '../../../common/presentation/widget/user_circle_avatar.dart';
import '../../../common/presentation/widget/widget.dart';
import '../../domain/domain.dart';
import 'unread_indicator.dart';

const _paddingH = 20.0;
const _paddingV = 15.0;
const _avatarAndTitleSeparator = 30.0;
const _titleAndMessageSeparator = 5.0;
const _authorAndMessageSeparator = 5.0;
const _titleAndTimeSeparator = 8.0;
const _messageFlex = 2;
const _chatInfoFlex = 5;

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
    required this.chat,
    required this.onPressed,
  });

  final Chat chat;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    final lastMessage = chat.lastMessage;

    return InkWell(
      onTap: onPressed,
      child: ColoredBox(
        color: colorSchemeTX.chatCard,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: _paddingH,
            vertical: _paddingV,
          ),
          child: Row(
            children: [
              UserCircleAvatar(
                url: chat.avatarUrl,
                onlineStatus: chat.onlineStatus,
              ),
              const SizedBox(
                width: _avatarAndTitleSeparator,
              ),
              Expanded(
                flex: _chatInfoFlex,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.title,
                      style: theme.textTheme.headline5,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (lastMessage != null) ...[
                      const SizedBox(
                        height: _titleAndMessageSeparator,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              lastMessage.sender.name,
                              style: theme.textTheme.subtitle1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            ':',
                            style: theme.textTheme.subtitle1,
                          ),
                          const SizedBox(
                            width: _authorAndMessageSeparator,
                          ),
                          Flexible(
                            flex: _messageFlex,
                            child: Text(
                              lastMessage.text,
                              style: theme.textTheme.bodyText2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
              if (lastMessage != null && chat.unreadAmount > 0)
                UnreadIndicator(
                  unread: chat.unreadAmount,
                ),
              const SizedBox(
                width: _titleAndTimeSeparator,
              ),
              if (lastMessage != null)
                Flexible(
                  child: Text(
                    _formattedDateTime(
                      lastMessage.modifiedAt ?? lastMessage.sentAt,
                    ),
                    style: theme.textTheme.bodyText2,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  // TODO: move this logic
  String _formattedDateTime(DateTime dateTime) {
    final now = DateTime.now();

    if (dateTime.year == now.year) {
      if (dateTime.month == now.month) {
        if (dateTime.day == now.day) {
          return DateFormat.Hm().format(dateTime);
        }
      }

      return DateFormat.MMMd().format(dateTime);
    }

    return DateFormat.yMd().format(dateTime);
  }
}
