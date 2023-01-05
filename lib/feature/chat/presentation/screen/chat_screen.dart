import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../l10n/l10n.dart';
import '../../../../theme/theme.dart';
import '../../../common/application/persistence/date_time_facade.dart';
import '../../../common/domain/domain.dart';
import '../../application/store/chat_store/chat_store.dart';
import '../widget/widget.dart';

const _appBarHeight = 66.0;
final _getIt = GetIt.instance;

// TODO: remove
const _me = User(
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
    final dateTimeFacade = _getIt.get<DateTimeFacade>();

    return Scaffold(
      appBar: _AppBar(
        dateTimeFacade,
      ),
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
  const _AppBar(this.dateTimeFacade);

  final DateTimeFacade dateTimeFacade;

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
        title: _AppBarTitle(
          dateTimeFacade,
        ),
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
  const _AppBarTitle(this.dateTimeFacade);

  final DateTimeFacade dateTimeFacade;

  @override
  Widget build(BuildContext context) {
    final chatStore = _getIt.get<ChatStore>();
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return Observer(
      builder: (context) {
        final chat = chatStore.chat;

        if (chat == null) {
          return const SizedBox.shrink();
        }

        final beautifiedOnlineStatus = _beautifyOnlineStatus(
          l10n,
          chat.partner,
        );

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              chat.title,
            ),
            if (beautifiedOnlineStatus.isNotEmpty)
              Text(
                beautifiedOnlineStatus,
                style: theme.textTheme.headline6,
              ),
          ],
        );
      },
    );
  }

  String _beautifyOnlineStatus(
    AppLocalizations l10n,
    User? partner,
  ) {
    if (partner == null) {
      return l10n.no_online_status;
    }

    final online = partner.online;
    final lastSeen = partner.lastSeen;

    if (online) {
      return l10n.is_online_status;
    }

    if (!online && lastSeen == null) {
      return l10n.hidden_online_status;
    }

    if (online && lastSeen != null) {
      return '${l10n.last_seen_online_status} '
          '${dateTimeFacade.beautifyBasedOnNow(lastSeen)}';
    }

    return '';
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

              if (message.senderID == null) {
                return InfoMessageCard(
                  key: ValueKey(message.id),
                  message: message,
                );
              }

              if (message.senderID == _me.id) {
                return MyMessageCard(
                  key: ValueKey(message.id),
                  message: message,
                );
              }

              return OthersMessageCard(
                key: ValueKey(message.id),
                message: message,
                showSender: chat.chatType == ChatType.group,
              );
            },
          ),
        );
      },
    );
  }
}
