import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../l10n/l10n.dart';
import '../../../../theme/theme.dart';
import '../../../../util/hook/autorun.dart';
import '../../../common/presentation/widget/widget.dart';
import '../../application/store/chat_list/chat_list_store.dart';
import '../widget/widget.dart';

const _loadingMorePadding = 8.0;
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
  Size get preferredSize => const Size.fromHeight(66.0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    final l10n = context.l10n;

    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        l10n.chat_tab_title,
      ),
      actions: [
        Align(
          child: ElevatedButton(
            style: buttonStyleTX.filledIcon,
            onPressed: () {},
            child: const Icon(
              Icons.add,
            ),
          ),
        ),
        Align(
          child: ElevatedButton(
            style: buttonStyleTX.filledIcon,
            onPressed: () {},
            child: const Icon(
              Icons.search,
            ),
          ),
        ),
      ],
      bottom: const _AppBarBottom(),
    );
  }
}

// ignore: prefer_mixin
class _AppBarBottom extends StatelessWidget with PreferredSizeWidget {
  const _AppBarBottom();

  @override
  Size get preferredSize => const Size.fromHeight(2);

  @override
  Widget build(BuildContext context) {
    final chatListStore = _getIt.get<ChatListStore>();

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

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final chatListStore = _getIt.get<ChatListStore>();

    useAutorun((_) {
      chatListStore.load();
    });

    return Observer(
      builder: (context) {
        return chatListStore.showItems
            ? NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification.metrics.extentAfter < 10 &&
                      chatListStore.hasMoreSuggestions) {
                    chatListStore.load();
                  }

                  return true;
                },
                child: RefreshIndicator(
                  onRefresh: chatListStore.refresh,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: chatListStore.suggestions.length +
                        (chatListStore.showItemLoading ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == chatListStore.suggestions.length) {
                        return const Padding(
                          padding: EdgeInsets.all(_loadingMorePadding),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }

                      return ChatCard(
                        chat: chatListStore.suggestions[index],
                        onPressed: () {},
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
