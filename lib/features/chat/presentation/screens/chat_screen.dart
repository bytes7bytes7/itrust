import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/domain/domain.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/chat/chat_store.dart';
import '../widgets/widgets.dart';

const _appBarHeight = kToolbarHeight;
const _loadChatKey = 'load chat';
final _getIt = GetIt.instance;

class ChatScreen extends HookWidget {
  const ChatScreen({
    super.key,
    required this.chatID,
  });

  final String chatID;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    final chatStore = useMemoized(() => _getIt.get<ChatStore>());

    useEffect(
      () {
        chatStore
          ..chatID = chatID
          ..loadChat();

        return null;
      },
      [_loadChatKey],
    );

    useReaction<String>(
      (_) => chatStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    return Scaffold(
      appBar: _AppBar(
        l10n: l10n,
        chatStore: chatStore,
      ),
      body: _Body(
        theme: theme,
        l10n: l10n,
        chatStore: chatStore,
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    required this.l10n,
    required this.chatStore,
  });

  final AppLocalizations l10n;
  final ChatStore chatStore;

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leading: FilledIconButton(
          iconPath: Assets.image.svg.arrowBack.path,
          onPressed: chatStore.onBackButtonPressed,
        ),
        centerTitle: true,
        title: _AppBarTitle(
          chatStore: chatStore,
        ),
        actions: [
          FilledIconButton(
            iconPath: Assets.image.svg.moreVert.path,
            onPressed: () => _showChatOptions(
              context: context,
              l10n: l10n,
            ),
          ),
        ],
      ),
    );
  }

  void _showChatOptions({
    required BuildContext context,
    required AppLocalizations l10n,
  }) {
    showOptions(
      context: context,
      items: [
        OptionItem(
          text: l10n.search_btn,
          iconPath: Assets.image.svg.search.path,
          onPressed: () {
            // TODO: implement search
          },
        ),
        OptionItem(
          text: l10n.leave_chat_short_btn,
          iconPath: Assets.image.svg.logout.path,
          onPressed: () {
            // TODO: implement chat leaving
          },
        ),
      ],
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({
    required this.chatStore,
  });

  final ChatStore chatStore;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Observer(
      builder: (context) {
        final chat = chatStore.chat;

        if (chat == null) {
          return const SizedBox.shrink();
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              chat.map(
                monologue: (e) => e.title,
                dialogue: (e) => e.partnerName,
                group: (e) => e.title,
              ),
            ),
            chat.map(
              monologue: (_) => const SizedBox.shrink(),
              dialogue: (e) => Text(
                e.onlineStatus,
                style: theme.textTheme.headline6,
              ),
              group: (_) => const SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.theme,
    required this.l10n,
    required this.chatStore,
  });

  final ThemeData theme;
  final AppLocalizations l10n;
  final ChatStore chatStore;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: _MessageList(
              theme: theme,
              l10n: l10n,
              chatStore: chatStore,
            ),
          ),
          MessageField(
            hint: l10n.message_field_hint,
            onEmojiPressed: () {},
            onAttachFilePressed: () {},
            onSendPressed: (text) => chatStore.sendMessage(text: text),
          ),
        ],
      ),
    );
  }
}

class _MessageList extends StatelessWidget {
  const _MessageList({
    required this.theme,
    required this.l10n,
    required this.chatStore,
  });

  final ThemeData theme;
  final AppLocalizations l10n;
  final ChatStore chatStore;

  @override
  Widget build(BuildContext context) {
    // TODO: fix bug when new message is blinking during sending
    return Observer(
      builder: (context) {
        final chat = chatStore.chat;

        if (chat == null) {
          return const SizedBox.shrink();
        }

        if (chatStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final itemCount =
            chatStore.messages.length + chatStore.sendingMessages.length + 1;

        if (itemCount == 1) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.lottie.chatting.lottie(),
              const SizedBox(
                height: 30,
              ),
              Text(
                l10n.no_messages_in_chat,
                style: theme.textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ],
          );
        }

        return ListView.custom(
          physics: const AlwaysScrollableScrollPhysics(),
          reverse: true,
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: itemCount,
            findChildIndexCallback: (key) {
              final messageKey = key as ValueKey<String>;
              var val = chatStore.sendingMessages
                  .indexWhere((e) => e.id == messageKey.value);

              if (val != -1) {
                return val;
              }

              val = chatStore.messages
                  .indexWhere((e) => e.id == messageKey.value);

              if (val == -1) {
                return null;
              }

              final index = chatStore.sendingMessages.length + val;

              if (index >= 0) {
                return index;
              }

              return null;
            },
            (context, index) {
              if (index == itemCount - 1) {
                if (chatStore.isLoadingMore) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (chatStore.canLoadMore) {
                  chatStore.loadMoreMessages();
                }

                return const SizedBox.shrink();
              }

              if (index >= chatStore.sendingMessages.length) {
                final message = chatStore
                    .messages[index - chatStore.sendingMessages.length];

                return message.map(
                  info: (message) {
                    return InfoMessageListTile(
                      key: ValueKey(message.id),
                      text: message.text,
                      dateTime: message.sentAt,
                    );
                  },
                  user: (message) {
                    if (message.isSentByMe) {
                      return MyMessageListTile(
                        key: ValueKey(message.id),
                        text: message.text,
                        isRead: message.isReadByMe,
                        dateTime: message.modifiedAt ?? message.sentAt,
                      );
                    }

                    return OthersMessageListTile(
                      key: ValueKey(message.id),
                      showSender: chat is GroupChat,
                      dateTime: message.modifiedAt ?? message.sentAt,
                      text: message.text,
                      senderName: message.senderName,
                    );
                  },
                );
              }

              final sendingMessage = chatStore.sendingMessages[index];

              return MyMessageListTile(
                key: ValueKey(sendingMessage.id),
                sending: true,
                text: sendingMessage.text,
                isRead: sendingMessage.isReadByMe,
                dateTime: sendingMessage.modifiedAt ?? sendingMessage.sentAt,
              );
            },
          ),
        );
      },
    );
  }
}
