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
import '../../application/stores/chat_store/chat_store.dart';
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
        chatStore: chatStore,
      ),
      body: _Body(
        l10n: l10n,
        chatStore: chatStore,
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({
    required this.chatStore,
  });

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
            onPressed: () {},
          ),
        ],
      ),
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
    required this.l10n,
    required this.chatStore,
  });

  final AppLocalizations l10n;
  final ChatStore chatStore;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: _MessageList(
              chatStore: chatStore,
            ),
          ),
          MessageField(
            hint: l10n.message_field_hint,
            onEmojiPressed: () {},
            onAttachFilePressed: () {},
            onSendPressed: (value) {},
          ),
        ],
      ),
    );
  }
}

class _MessageList extends StatelessWidget {
  const _MessageList({
    required this.chatStore,
  });

  final ChatStore chatStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final chat = chatStore.chat;

        if (chat == null) {
          return const SizedBox.shrink();
        }

        return ListView.custom(
          reverse: true,
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: chatStore.messages.length,
            findChildIndexCallback: (key) {
              final messageKey = key as ValueKey;
              final val = chatStore.messageKeys[messageKey.value]!;

              return chatStore.messages.length - 1 - val;
            },
            (context, index) {
              final message =
                  chatStore.messages[chatStore.messages.length - 1 - index];

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
            },
          ),
        );
      },
    );
  }
}
