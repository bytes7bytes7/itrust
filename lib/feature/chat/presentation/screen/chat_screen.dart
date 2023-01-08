import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../theme/theme.dart';
import '../../../common/domain/domain.dart';
import '../../application/store/chat_store/chat_store.dart';
import '../widget/widget.dart';

const _appBarHeight = 66.0;
final _getIt = GetIt.instance;

// TODO: remove
const _me = User.end(
  id: UserID('me'),
  name: 'bytes7 bytes7',
  avatarUrls: [],
  online: true,
);

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
    required this.chatID,
  });

  final ChatID chatID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppBar(),
      body: SafeArea(
        child: Column(
          children: const [
            Expanded(
              child: _MessageList(),
            ),
            MessageField(),
          ],
        ),
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    final chatStore = _getIt.get<ChatStore>();

    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leading: Align(
          child: ElevatedButton(
            style: buttonStyleTX.filledIcon,
            onPressed: chatStore.onBackPressed,
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        centerTitle: true,
        title: const _AppBarTitle(),
        actions: [
          Align(
            child: ElevatedButton(
              style: buttonStyleTX.filledIcon,
              onPressed: () {},
              child: const Icon(
                Icons.more_vert,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    final chatStore = _getIt.get<ChatStore>();
    final theme = Theme.of(context);

    return Observer(
      builder: (context) {
        final chat = chatStore.chat;

        if (chat == null) {
          return const SizedBox.shrink();
        }

        // TODO: get info about user
        const onlineStatus = '';

        // TODO: get info about user/chat
        const title = 'title';

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              title,
            ),
            if (onlineStatus.isNotEmpty)
              Text(
                onlineStatus,
                style: theme.textTheme.headline6,
              ),
          ],
        );
      },
    );
  }
}

class _MessageList extends StatelessWidget {
  const _MessageList();

  @override
  Widget build(BuildContext context) {
    final chatStore = _getIt.get<ChatStore>();

    return Observer(
      builder: (context) {
        final chat = chatStore.chat;

        if (chat == null) {
          return const SizedBox.shrink();
        }

        return ListView.custom(
          reverse: true,
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: chatStore.suggestions.length,
            findChildIndexCallback: (key) {
              final messageKey = key as ValueKey;
              final val = chatStore.messageKeys[messageKey.value]!;

              return chatStore.suggestions.length - 1 - val;
            },
            (context, index) {
              final message = chatStore
                  .suggestions[chatStore.suggestions.length - 1 - index];

              return message.map(
                info: (message) {
                  return InfoMessageCard(
                    key: ValueKey(message.id),
                    message: message,
                  );
                },
                user: (message) {
                  if (message.senderID == _me.id) {
                    return MyMessageCard(
                      key: ValueKey(message.id),
                      message: message,
                    );
                  }

                  return OthersMessageCard(
                    key: ValueKey(message.id),
                    message: message,
                    showSender: chatStore.chat is GroupChat,
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
