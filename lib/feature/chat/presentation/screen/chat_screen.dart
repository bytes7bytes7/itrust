import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../l10n/l10n.dart';
import '../../../../theme/theme.dart';
import '../../../common/application/persistence/date_time_facade.dart';
import '../../../common/domain/domain.dart';
import '../../application/provider/chat_store_provider.dart';
import '../widget/widget.dart';

const _appBarHeight = 66.0;
final _getIt = GetIt.instance;

// TODO: remove
const _me = User(
  id: 'me',
  name: 'bytes7 bytes7',
  avatarUrls: [],
);

class ChatScreen extends HookConsumerWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leading: Align(
          child: ElevatedButton(
            style: buttonStyleTX.filledIcon,
            onPressed: () {},
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

class _AppBarTitle extends HookConsumerWidget {
  const _AppBarTitle(this.dateTimeFacade);

  final DateTimeFacade dateTimeFacade;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatStore = ref.watch(chatStoreProvider);

    if (chatStore == null) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);

    final l10n = context.l10n;

    final beautifiedOnlineStatus = _beautifyOnlineStatus(
      l10n,
      chatStore.chat.onlineStatus,
    );

    return Observer(
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              chatStore.chat.title,
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
    OnlineStatus onlineStatus,
  ) {
    if (onlineStatus is IsOnlineStatus) {
      return l10n.is_online_status;
    }

    if (onlineStatus is HiddenOnlineStatus) {
      return l10n.hidden_online_status;
    }

    if (onlineStatus is LastSeenOnlineStatus) {
      return '${l10n.last_seen_online_status} '
          '${dateTimeFacade.beautifyBasedOnNow(onlineStatus.dateTime)}';
    }

    if (onlineStatus is NoOnlineStatus) {
      return l10n.no_online_status;
    }

    return '';
  }
}

class _MessageList extends HookConsumerWidget {
  const _MessageList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatStore = ref.watch(chatStoreProvider);

    if (chatStore == null) {
      return const SizedBox.shrink();
    }

    return Observer(
      builder: (context) {
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

              if (message.sender == null) {
                return InfoMessageCard(
                  key: ValueKey(message.id),
                  message: message,
                );
              }

              if (message.sender?.id == _me.id) {
                return MyMessageCard(
                  key: ValueKey(message.id),
                  message: message,
                );
              }

              return OthersMessageCard(
                key: ValueKey(message.id),
                showSender: chatStore.chat.chatType == ChatType.group,
                message: message,
              );
            },
          ),
        );
      },
    );
  }
}
