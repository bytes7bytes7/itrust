import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../themes/themes.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/chat_list/chat_list_store.dart';
import '../widgets/widgets.dart';

const _appBarHeight = kToolbarHeight;
const _loadChatsKey = 'load chats';
final _getIt = GetIt.instance;
final _logger = Logger('$ChatListScreen');

class ChatListScreen extends HookWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatListStore = useMemoized(() => _getIt.get<ChatListStore>());

    useEffect(
      () {
        chatListStore.loadChats();

        return null;
      },
      [_loadChatsKey],
    );

    useReaction<String>(
      (_) => chatListStore.error,
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
        chatListStore: chatListStore,
      ),
      body: SafeArea(
        child: _Body(
          chatListStore: chatListStore,
        ),
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({
    required this.chatListStore,
  });

  final ChatListStore chatListStore;

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          l10n.chat_tab_title,
        ),
        actions: [
          FilledIconButton(
            iconPath: Assets.image.svg.add.path,
            onPressed: () {
              _showCreateChat(
                context: context,
                theme: theme,
                l10n: l10n,
              );
            },
          ),
          FilledIconButton(
            iconPath: Assets.image.svg.search.path,
            onPressed: () {
              // TODO: implement search
            },
          ),
        ],
      ),
    );
  }

  void _showCreateChat({
    required BuildContext context,
    required ThemeData theme,
    required AppLocalizations l10n,
  }) {
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(
        double.maxFinite,
        0,
        0,
        double.maxFinite,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide.none,
      ),
      items: [
        PopupMenuItem(
          onTap: chatListStore.onCreateMonologueBtnPressed,
          child: Row(
            children: [
              Assets.image.svg.person.svg(
                color: colorSchemeTX.simpleIcon,
              ),
              const SizedBox(width: 12),
              Text(
                l10n.create_monologue_chat_btn,
                style: theme.textTheme.bodyText1,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: chatListStore.onCreateDialogueBtnPressed,
          child: Row(
            children: [
              Assets.image.svg.group.svg(
                color: colorSchemeTX.simpleIcon,
              ),
              const SizedBox(width: 12),
              Text(
                l10n.create_dialogue_chat_btn,
                style: theme.textTheme.bodyText1,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: chatListStore.onCreateGroupBtnPressed,
          child: Row(
            children: [
              Assets.image.svg.groups.svg(
                color: colorSchemeTX.simpleIcon,
              ),
              const SizedBox(width: 12),
              Text(
                l10n.create_group_chat_btn,
                style: theme.textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.chatListStore,
  });

  final ChatListStore chatListStore;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    // TODO: fix bug when chat list is empty (but it is NOT on the server)

    return Observer(
      builder: (context) {
        if (chatListStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final itemCount = chatListStore.chats.length + 1;

        if (chatListStore.chats.isEmpty) {
          _logger.fine('Empty: ${chatListStore.chats.length}');

          return RefreshIndicator(
            onRefresh: () async => chatListStore.refresh(),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      Assets.lottie.chatting.lottie(),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        l10n.empty_chat_list_message,
                        style: theme.textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        _logger.fine('Not empty: ${chatListStore.chats.length}');

        return RefreshIndicator(
          onRefresh: () async => chatListStore.refresh(),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              if (index == itemCount - 1) {
                if (chatListStore.isLoadingMore) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (chatListStore.canLoadMore) {
                  chatListStore.loadMoreChats();
                }

                return const SizedBox.shrink();
              }

              final chat = chatListStore.chats[index];

              return ChatListTile(
                chat: chat,
                onPressed: () {
                  chatListStore.onChatCardPressed(chatID: chat.id);
                },
              );
            },
          ),
        );
      },
    );
  }
}
