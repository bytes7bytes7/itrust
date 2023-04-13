import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../l10n/l10n.dart';
import '../../../../themes/themes.dart';
import '../../../common/domain/domain.dart';
import '../../../common/presentation/widgets/widgets.dart';
import 'unread_indicator.dart';

const _paddingH = 20.0;
const _paddingV = 14.0;
const _avatarAndTitleSeparator = 30.0;
const _titleAndMessageSeparator = 4.0;
const _authorAndMessageSeparator = 4.0;
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

    final l10n = context.l10n;

    // TODO: implement
    final lastMessageID = chat.lastMessageID;
    final lastMessage = lastMessageID != null
        ? Message.user(
            id: lastMessageID,
            chatID: chat.id,
            sentAt: DateTime.now(),
            readBy: [],
            text: 'some text $lastMessageID',
            mediaUrls: [],
            senderID: UserID.fromString('some id $lastMessageID'),
          )
        : null;

    // TODO: implement
    final avatarUrl = chat.map(
      monologue: (chat) => chat.picUrl,
      dialogue: (chat) => null,
      group: (chat) => chat.picUrl,
    );
    const online = true;

    // TODO: implement
    final title = chat.map(
      monologue: (chat) => chat.title,
      dialogue: (chat) => 'dialog title',
      group: (chat) => chat.title,
    );

    // TODO: implement
    final unreadAmount = '${chat.unreadAmount}';

    return Material(
      color: colorSchemeTX.chatCard,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: _paddingH,
            vertical: _paddingV,
          ),
          child: Row(
            children: [
              UserCircleAvatar(
                url: avatarUrl,
                online: online,
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
                      title,
                      style: theme.textTheme.headline5,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (lastMessage != null) ...[
                      const SizedBox(
                        height: _titleAndMessageSeparator,
                      ),
                      lastMessage.map(
                        info: (message) {
                          return Text(
                            message.markUp,
                            style: theme.textTheme.bodyText2?.copyWith(
                              color: colorSchemeTX.infoMsgPreviewColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          );
                        },
                        user: (message) {
                          // TODO: implement
                          final senderName = 'sender ${message.senderID}';

                          return Row(
                            children: [
                              Flexible(
                                child: Text(
                                  senderName,
                                  style: theme.textTheme.subtitle1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                l10n.chat_card_author_and_msg_separator,
                                style: theme.textTheme.subtitle1,
                              ),
                              const SizedBox(
                                width: _authorAndMessageSeparator,
                              ),
                              Flexible(
                                flex: _messageFlex,
                                child: Text(
                                  message.text,
                                  style: theme.textTheme.bodyText2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ],
                ),
              ),
              if (lastMessage != null && chat.unreadAmount > 0)
                UnreadIndicator(
                  unread: unreadAmount,
                ),
              const SizedBox(
                width: _titleAndTimeSeparator,
              ),
              if (lastMessage != null)
                Flexible(
                  child: Text(
                    _formattedDateTime(lastMessage.sentAt),
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

    return DateFormat('dd.MM.yyy').format(dateTime);
  }
}
