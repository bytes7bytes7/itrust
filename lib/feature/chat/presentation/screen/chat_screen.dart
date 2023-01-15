import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../common/domain/domain.dart';
import '../../../common/presentation/widget/widget.dart';
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
    final chatStore = _getIt.get<ChatStore>();

    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leading: FilledIconButton(
          iconData: Icons.arrow_back,
          onPressed: chatStore.onBackPressed,
        ),
        centerTitle: true,
        title: const _AppBarTitle(),
        actions: [
          FilledIconButton(
            iconData: Icons.more_vert,
            onPressed: () {},
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
                  // TODO: use markUp and markUpData
                  return InfoMessageCard(
                    key: ValueKey(message.id),
                    text: message.markUp,
                    // TODO: beautify datetime
                    dateTime: 'DT',
                  );
                },
                user: (message) {
                  if (message.senderID == _me.id) {
                    return MyMessageCard(
                      key: ValueKey(message.id),
                      text: message.text,
                      // TODO: calculate in MobX
                      isRead: false,
                      // TODO: beautify datetime
                      dateTime: 'DT',
                    );
                  }

                  return OthersMessageCard(
                    key: ValueKey(message.id),
                    showSender: chatStore.chat is GroupChat,
                    // TODO: beautify datetime
                    dateTime: 'DT',
                    text: message.text,
                    // TODO: get name
                    senderName: 'sender',
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
