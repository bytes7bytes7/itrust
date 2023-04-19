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
import '../../application/stores/people/people_store.dart';

const _loadMeKey = 'load me (people)';
const _loadPeopleKey = 'load people';
const _tabHeight = 36.0;

final _getIt = GetIt.instance;

class PeopleScreen extends HookWidget {
  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final peopleStore = useMemoized(() => _getIt.get<PeopleStore>());

    useEffect(
      () {
        peopleStore.loadMe();
        return null;
      },
      [_loadMeKey],
    );

    useEffect(
      () {
        peopleStore.load();
        return null;
      },
      [_loadPeopleKey],
    );

    useReaction<String>(
      (_) => peopleStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    useReaction<String>(
      (_) => peopleStore.allUsersStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    useReaction<String>(
      (_) => peopleStore.friendsStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    useReaction<String>(
      (_) => peopleStore.subscribersStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    useReaction<String>(
      (_) => peopleStore.subscriptionsStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    return DefaultTabController(
      length: peopleStore.tabsAmount,
      initialIndex: peopleStore.currentTabIndex,
      child: Scaffold(
        appBar: _AppBar(
          l10n: l10n,
          peopleStore: peopleStore,
        ),
        body: _Body(
          l10n: l10n,
          peopleStore: peopleStore,
        ),
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  _AppBar({
    required this.l10n,
    required this.peopleStore,
  });

  final AppLocalizations l10n;
  final PeopleStore peopleStore;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        l10n.people_screen_title,
      ),
      leading: FilledIconButton(
        iconPath: Assets.image.svg.arrowBack.path,
        onPressed: peopleStore.onBackButtonPressed,
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
    required this.peopleStore,
  });

  final AppLocalizations l10n;
  final PeopleStore peopleStore;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Observer(
          builder: (context) {
            return TabBar(
              isScrollable: true,
              onTap: (index) => peopleStore.selectTab(index: index),
              tabs: [
                Tab(
                  text: l10n.all_users_tab(peopleStore.allUsersAmount),
                  height: _tabHeight,
                ),
                Tab(
                  text: l10n.friends_tab(peopleStore.friendsAmount),
                  height: _tabHeight,
                ),
                Tab(
                  text: l10n.subscribers_tab(peopleStore.subscribersAmount),
                  height: _tabHeight,
                ),
                Tab(
                  text: l10n.subscriptions_tab(peopleStore.subscriptionsAmount),
                  height: _tabHeight,
                ),
              ],
            );
          },
        ),
        Expanded(
          child: TabBarView(
            children: [
              _AllUsersTab(
                theme: theme,
                l10n: l10n,
                peopleStore: peopleStore,
              ),
              _FriendsTab(
                theme: theme,
                l10n: l10n,
                peopleStore: peopleStore,
              ),
              _SubscribersTab(
                theme: theme,
                l10n: l10n,
                peopleStore: peopleStore,
              ),
              _SubscriptionsTab(
                theme: theme,
                l10n: l10n,
                peopleStore: peopleStore,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AllUsersTab extends StatelessWidget {
  const _AllUsersTab({
    required this.theme,
    required this.l10n,
    required this.peopleStore,
  });

  final ThemeData theme;
  final AppLocalizations l10n;
  final PeopleStore peopleStore;

  @override
  Widget build(BuildContext context) {
    final allUsersStore = peopleStore.allUsersStore;

    return Observer(
      builder: (context) {
        if (allUsersStore.isLoading) {
          return const _UsersLoading();
        }

        if (allUsersStore.users.isEmpty) {
          return _UsersEmpty(
            theme: theme,
            text: l10n.no_other_users,
            child: Assets.lottie.nothing.lottie(),
          );
        }

        final itemCount = allUsersStore.users.length + 1;

        return _UsersLoaded(
          peopleStore: peopleStore,
          itemCount: itemCount,
          refresh: allUsersStore.refresh,
          canLoadMore: allUsersStore.canLoadMore,
          loadMore: allUsersStore.loadMoreUsers,
          isLoadingMore: allUsersStore.isLoadingMore,
          users: allUsersStore.users,
          onUserPressed: peopleStore.onUserPressed,
        );
      },
    );
  }
}

class _FriendsTab extends StatelessWidget {
  const _FriendsTab({
    required this.theme,
    required this.l10n,
    required this.peopleStore,
  });

  final ThemeData theme;
  final AppLocalizations l10n;
  final PeopleStore peopleStore;

  @override
  Widget build(BuildContext context) {
    final friendsStore = peopleStore.friendsStore;

    return Observer(
      builder: (context) {
        if (friendsStore.isLoading) {
          return const _UsersLoading();
        }

        if (friendsStore.friends.isEmpty) {
          return _UsersEmpty(
            theme: theme,
            text: l10n.you_have_no_friends,
            child: Assets.lottie.nothing.lottie(),
          );
        }

        final itemCount = friendsStore.friends.length + 1;

        return _UsersLoaded(
          peopleStore: peopleStore,
          itemCount: itemCount,
          refresh: friendsStore.refresh,
          canLoadMore: friendsStore.canLoadMore,
          loadMore: friendsStore.loadMoreFriends,
          isLoadingMore: friendsStore.isLoadingMore,
          users: friendsStore.friends,
          onUserPressed: peopleStore.onUserPressed,
        );
      },
    );
  }
}

class _SubscribersTab extends StatelessWidget {
  const _SubscribersTab({
    required this.theme,
    required this.l10n,
    required this.peopleStore,
  });

  final ThemeData theme;
  final AppLocalizations l10n;
  final PeopleStore peopleStore;

  @override
  Widget build(BuildContext context) {
    final subscribersStore = peopleStore.subscribersStore;

    return Observer(
      builder: (context) {
        if (subscribersStore.isLoading) {
          return const _UsersLoading();
        }

        if (subscribersStore.subscribers.isEmpty) {
          return _UsersEmpty(
            theme: theme,
            text: l10n.you_have_no_subscribers,
            child: Assets.lottie.nothing.lottie(),
          );
        }

        final itemCount = subscribersStore.subscribers.length + 1;

        return _UsersLoaded(
          peopleStore: peopleStore,
          itemCount: itemCount,
          refresh: subscribersStore.refresh,
          canLoadMore: subscribersStore.canLoadMore,
          loadMore: subscribersStore.loadMoreSubscribers,
          isLoadingMore: subscribersStore.isLoadingMore,
          users: subscribersStore.subscribers,
          onUserPressed: peopleStore.onUserPressed,
        );
      },
    );
  }
}

class _SubscriptionsTab extends StatelessWidget {
  const _SubscriptionsTab({
    required this.theme,
    required this.l10n,
    required this.peopleStore,
  });

  final ThemeData theme;
  final AppLocalizations l10n;
  final PeopleStore peopleStore;

  @override
  Widget build(BuildContext context) {
    final subscriptionsStore = peopleStore.subscriptionsStore;

    return Observer(
      builder: (context) {
        if (subscriptionsStore.isLoading) {
          return const _UsersLoading();
        }

        if (subscriptionsStore.subscriptions.isEmpty) {
          return _UsersEmpty(
            theme: theme,
            text: l10n.you_have_no_subscriptions,
            child: Assets.lottie.nothing.lottie(),
          );
        }

        final itemCount = subscriptionsStore.subscriptions.length + 1;

        return _UsersLoaded(
          peopleStore: peopleStore,
          itemCount: itemCount,
          refresh: subscriptionsStore.refresh,
          canLoadMore: subscriptionsStore.canLoadMore,
          loadMore: subscriptionsStore.loadMoreSubscriptions,
          isLoadingMore: subscriptionsStore.isLoadingMore,
          users: subscriptionsStore.subscriptions,
          onUserPressed: peopleStore.onUserPressed,
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

class _UsersEmpty extends StatelessWidget {
  const _UsersEmpty({
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

class _UsersLoaded extends StatelessWidget {
  const _UsersLoaded({
    required this.peopleStore,
    required this.itemCount,
    required this.refresh,
    required this.canLoadMore,
    required this.loadMore,
    required this.isLoadingMore,
    required this.users,
    required this.onUserPressed,
  });

  final PeopleStore peopleStore;
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
      onRefresh: () async => peopleStore.refresh(),
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
