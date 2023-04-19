import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/friend_bids/friend_bids_store.dart';

const _loadMeKey = 'load me (friend bids)';
const _loadPeopleKey = 'load friend bids';
const _tabHeight = 36.0;

final _getIt = GetIt.instance;

class FriendBidsScreen extends HookWidget {
  const FriendBidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final friendBidsStore = useMemoized(() => _getIt.get<FriendBidsStore>());

    useEffect(
      () {
        friendBidsStore.loadMe();
        return null;
      },
      [_loadMeKey],
    );

    useEffect(
      () {
        friendBidsStore.load();
        return null;
      },
      [_loadPeopleKey],
    );

    useReaction<String>(
      (_) => friendBidsStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    useReaction<String>(
      (_) => friendBidsStore.inboxStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    useReaction<String>(
      (_) => friendBidsStore.outboxStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    return DefaultTabController(
      length: friendBidsStore.tabsAmount,
      initialIndex: friendBidsStore.currentTabIndex,
      child: Scaffold(
        appBar: _AppBar(
          l10n: l10n,
          friendBidsStore: friendBidsStore,
        ),
        body: _Body(
          l10n: l10n,
          friendBidsStore: friendBidsStore,
        ),
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  _AppBar({
    required this.l10n,
    required this.friendBidsStore,
  });

  final AppLocalizations l10n;
  final FriendBidsStore friendBidsStore;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        l10n.friend_bids_screen_title,
      ),
      leading: FilledIconButton(
        iconPath: Assets.image.svg.arrowBack.path,
        onPressed: friendBidsStore.onBackButtonPressed,
      ),
      actions: [
        FilledIconButton(
          iconPath: Assets.image.svg.search.path,
          onPressed: () {},
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.l10n,
    required this.friendBidsStore,
  });

  final AppLocalizations l10n;
  final FriendBidsStore friendBidsStore;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Observer(
          builder: (context) {
            return TabBar(
              isScrollable: true,
              onTap: (index) => friendBidsStore.selectTab(index: index),
              tabs: [
                Tab(
                  text: l10n
                      .inbox_friend_bids_tab(friendBidsStore.inboxBidsAmount),
                  height: _tabHeight,
                ),
                Tab(
                  text: l10n
                      .outbox_friend_bids_tab(friendBidsStore.outboxBidsAmount),
                  height: _tabHeight,
                ),
              ],
            );
          },
        ),
        Expanded(
          child: TabBarView(
            children: [
              _InboxTab(
                theme: theme,
                l10n: l10n,
                friendBidsStore: friendBidsStore,
              ),
              _OutboxTab(
                theme: theme,
                l10n: l10n,
                friendBidsStore: friendBidsStore,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _InboxTab extends StatelessWidget {
  const _InboxTab({
    required this.theme,
    required this.l10n,
    required this.friendBidsStore,
  });

  final ThemeData theme;
  final AppLocalizations l10n;
  final FriendBidsStore friendBidsStore;

  @override
  Widget build(BuildContext context) {
    final inboxStore = friendBidsStore.inboxStore;

    return Observer(
      builder: (context) {
        if (inboxStore.isLoading) {
          return const _UsersLoading();
        }

        if (inboxStore.users.isEmpty) {
          return _BidsEmpty(
            theme: theme,
            text: l10n.no_inbox_friend_bids,
            child: Assets.lottie.nothing.lottie(),
          );
        }

        final itemCount = inboxStore.users.length + 1;

        return _BidsLoaded(
          friendBidsStore: friendBidsStore,
          itemCount: itemCount,
          refresh: inboxStore.refresh,
          canLoadMore: inboxStore.canLoadMore,
          loadMore: inboxStore.loadMoreBids,
          isLoadingMore: inboxStore.isLoadingMore,
          users: inboxStore.users,
          onUserPressed: friendBidsStore.onUserAvatarPressed,
        );
      },
    );
  }
}

class _OutboxTab extends StatelessWidget {
  const _OutboxTab({
    required this.theme,
    required this.l10n,
    required this.friendBidsStore,
  });

  final ThemeData theme;
  final AppLocalizations l10n;
  final FriendBidsStore friendBidsStore;

  @override
  Widget build(BuildContext context) {
    final outboxStore = friendBidsStore.outboxStore;

    return Observer(
      builder: (context) {
        if (outboxStore.isLoading) {
          return const _UsersLoading();
        }

        if (outboxStore.users.isEmpty) {
          return _BidsEmpty(
            theme: theme,
            text: l10n.no_outbox_friend_bids,
            child: Assets.lottie.nothing.lottie(),
          );
        }

        final itemCount = outboxStore.users.length + 1;

        return _BidsLoaded(
          friendBidsStore: friendBidsStore,
          itemCount: itemCount,
          refresh: outboxStore.refresh,
          canLoadMore: outboxStore.canLoadMore,
          loadMore: outboxStore.loadMoreBids,
          isLoadingMore: outboxStore.isLoadingMore,
          users: outboxStore.users,
          onUserPressed: friendBidsStore.onUserAvatarPressed,
        );
      },
    );
  }
}

class _UsersLoading extends StatelessWidget {
  const _UsersLoading();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _BidsEmpty extends StatelessWidget {
  const _BidsEmpty({
    required this.theme,
    required this.text,
    this.child,
  });

  final ThemeData theme;
  final String text;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    // TODO: add refresh indicator
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child ?? const SizedBox.shrink(),
          Text(
            text,
            style: theme.textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _BidsLoaded extends StatelessWidget {
  const _BidsLoaded({
    required this.friendBidsStore,
    required this.itemCount,
    required this.refresh,
    required this.canLoadMore,
    required this.loadMore,
    required this.isLoadingMore,
    required this.users,
    required this.onUserPressed,
  });

  final FriendBidsStore friendBidsStore;
  final int itemCount;
  final VoidCallback refresh;
  final bool canLoadMore;
  final VoidCallback loadMore;
  final bool isLoadingMore;
  final List<UserVM> users;
  final void Function(String) onUserPressed;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => friendBidsStore.refresh(),
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          if (index == itemCount - 1) {
            if (canLoadMore) {
              loadMore();
            }

            if (isLoadingMore) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return const SizedBox.shrink();
          }

          final user = users[index];

          return UserListTile(
            user: user,
            onPressed: () => onUserPressed(user.id),
          );
        },
      ),
    );
  }
}
