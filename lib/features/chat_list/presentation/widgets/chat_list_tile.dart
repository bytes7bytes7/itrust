import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';
import '../../../../themes/themes.dart';
import '../../../common/application/view_models/chat_vm/chat_vm.dart';
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

class ChatListTile extends StatelessWidget {
  const ChatListTile({
    super.key,
    required this.chat,
    required this.onPressed,
  });

  final ChatVM chat;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    final l10n = context.l10n;

    final lastMessage = chat.lastMessage;

    final avatarUrl = chat.map(
      monologue: (chat) => chat.pic?.url,
      dialogue: (_) => null,
      group: (chat) => chat.pic?.url,
    );

    final iconName = chat.map(
      monologue: (chat) => chat.iconName,
      dialogue: (_) => null,
      group: (_) => null,
    );

    // TODO: implement
    const online = true;

    final title = chat.map(
      monologue: (chat) => chat.title,
      dialogue: (chat) => chat.partnerName,
      group: (chat) => chat.title,
    );

    final unreadAmount = chat
        .map(
          monologue: (_) => 0,
          dialogue: (e) => e.unreadAmount,
          group: (e) => e.unreadAmount,
        )
        .toString();

    // TODO: use ListTile instead
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
              ChatCircleAvatar(
                type: chat.map(
                  monologue: (_) => ChatCircleAvatarType.monologue,
                  dialogue: (_) => ChatCircleAvatarType.dialogue,
                  group: (_) => ChatCircleAvatarType.group,
                ),
                url: avatarUrl,
                online: online,
                iconName: iconName,
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
                            message.text,
                            style: theme.textTheme.bodyText2?.copyWith(
                              color: colorSchemeTX.infoMsgPreviewColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          );
                        },
                        user: (message) {
                          return chat.map(
                            monologue: (chat) {
                              return Text(
                                message.text,
                                style: theme.textTheme.bodyText2,
                                overflow: TextOverflow.ellipsis,
                              );
                            },
                            dialogue: (chat) {
                              if (message.isSentByMe) {
                                return Text(
                                  message.text,
                                  style: theme.textTheme.bodyText2,
                                  overflow: TextOverflow.ellipsis,
                                );
                              }

                              return Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      message.senderName,
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
                            group: (chat) {
                              if (message.isSentByMe) {
                                return Text(
                                  message.text,
                                  style: theme.textTheme.bodyText2,
                                  overflow: TextOverflow.ellipsis,
                                );
                              }

                              return Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      message.senderName,
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
                          );
                        },
                      ),
                    ],
                  ],
                ),
              ),
              if (lastMessage != null &&
                  chat
                      .map(
                        monologue: (_) => '',
                        dialogue: (e) => e.unreadAmount,
                        group: (e) => e.unreadAmount,
                      )
                      .isNotEmpty)
                UnreadIndicator(
                  unread: unreadAmount,
                ),
              const SizedBox(
                width: _titleAndTimeSeparator,
              ),
              if (lastMessage != null)
                Flexible(
                  child: Text(
                    lastMessage.sentAt,
                    style: theme.textTheme.bodyText2,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
