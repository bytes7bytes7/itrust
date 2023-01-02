import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../l10n/l10n.dart';
import '../../../../theme/theme.dart';
import '../../../../util/hook/autorun.dart';
import '../../../common/presentation/widget/widget.dart';
import '../../application/store/chat_list/chat_list_store.dart';
import '../widget/widget.dart';

const _loadingMorePadding = 8.0;

class ChatListScreen extends HookWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    final l10n = context.l10n;

    final chatListStore = context.watch<ChatListStore>();

    useAutorun((_) {
      chatListStore.load();
    });

    return Observer(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
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
            bottom: chatListStore.isLoading ? const LoadingBottomBar() : null,
          ),
          body: SafeArea(
            child: chatListStore.isLoading
                ? const SizedBox.shrink()
                : chatListStore.suggestions.isEmpty
                    ? Center(
                        child: Text(
                          l10n.empty_chat_list_message,
                        ),
                      )
                    : NotificationListener<ScrollNotification>(
                        onNotification: (notification) {
                          if (notification.metrics.extentAfter < 10 &&
                              chatListStore.hasMoreSuggestions) {
                            chatListStore.load();
                          }

                          return true;
                        },
                        child: ListView.builder(
                          itemCount: chatListStore.suggestions.length +
                              (chatListStore.hasMoreSuggestions ? 1 : 0),
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
          ),
        );
      },
    );
  }
}
