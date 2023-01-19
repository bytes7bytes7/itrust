import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/hooks.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/chat_list/chat_list_store.dart';
import '../widgets/widgets.dart';

const _loadingMorePadding = 8.0;
const _appBarHeight = kToolbarHeight;
const _appBarBottomHeight = 2.0;
const _loadMoreOffset = 10;
final _getIt = GetIt.instance;

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _AppBar(),
      body: SafeArea(
        child: _Body(),
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
    final l10n = context.l10n;

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
            onPressed: () {},
          ),
          FilledIconButton(
            iconPath: Assets.image.svg.search.path,
            onPressed: () {},
          ),
        ],
        bottom: const _AppBarBottom(),
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBarBottom extends HookWidget with PreferredSizeWidget {
  const _AppBarBottom();

  @override
  Size get preferredSize => const Size.fromHeight(_appBarBottomHeight);

  @override
  Widget build(BuildContext context) {
    final chatListStore = useMemoized(() => _getIt.get<ChatListStore>());

    return Observer(
      builder: (context) {
        return PreferredSize(
          preferredSize: preferredSize,
          child: chatListStore.showAppBarLoading
              ? const LoadingBottomBar()
              : const SizedBox.shrink(),
        );
      },
    );
  }
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final chatListStore = useMemoized(() => _getIt.get<ChatListStore>());

    useAutorun((_) {
      chatListStore.load();
    });

    return Observer(
      builder: (context) {
        return chatListStore.showItems
            ? NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification.metrics.extentAfter < _loadMoreOffset &&
                      chatListStore.hasMoreChats) {
                    chatListStore.load();
                  }

                  return true;
                },
                child: RefreshIndicator(
                  onRefresh: () async => chatListStore.refresh(),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: chatListStore.chats.length +
                        (chatListStore.showItemLoading ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == chatListStore.chats.length) {
                        return const Padding(
                          padding: EdgeInsets.all(_loadingMorePadding),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }

                      final chat = chatListStore.chats[index];

                      return ChatCard(
                        chat: chat,
                        onPressed: () {
                          chatListStore.onChatCardPressed(chat);
                        },
                      );
                    },
                  ),
                ),
              )
            : Center(
                child: Text(
                  l10n.empty_chat_list_message,
                ),
              );
      },
    );
  }
}
