import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/friends/friends_store.dart';

const _loadFriendsKey = 'load friends';

final _getIt = GetIt.instance;

class FriendsScreen extends HookWidget {
  const FriendsScreen({
    super.key,
    required this.userID,
  });

  final String userID;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final friendsStore =
        useMemoized(() => _getIt.get<FriendsStore>()..init(userID));

    useEffect(
      () {
        friendsStore.loadFriends();
        return null;
      },
      [_loadFriendsKey],
    );

    useReaction<String>(
      (_) => friendsStore.error,
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
        l10n: l10n,
        friendsStore: friendsStore,
      ),
      body: _Body(
        l10n: l10n,
        friendsStore: friendsStore,
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({
    required this.l10n,
    required this.friendsStore,
  });

  final AppLocalizations l10n;
  final FriendsStore friendsStore;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        l10n.friends_screen_title,
      ),
      leading: FilledIconButton(
        iconPath: Assets.image.svg.arrowBack.path,
        onPressed: friendsStore.onBackButtonPressed,
      ),
      actions: [
        FilledIconButton(
          iconPath: Assets.image.svg.search.path,
          onPressed: () {
            // TODO: implement search
          },
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.l10n,
    required this.friendsStore,
  });

  final AppLocalizations l10n;
  final FriendsStore friendsStore;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Observer(
      builder: (context) {
        if (friendsStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (friendsStore.hasError && friendsStore.friends.isEmpty) {
          return LoadingErrorContainer(
            onRetry: friendsStore.refresh,
          );
        }

        if (friendsStore.friends.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async => friendsStore.refresh(),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                child: Column(
                  children: [
                    Assets.lottie.nothing.lottie(),
                    Text(
                      l10n.no_friends,
                      style: theme.textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        final itemCount = friendsStore.friends.length + 1;

        return RefreshIndicator(
          onRefresh: () async => friendsStore.refresh(),
          child: ListView.builder(
            itemCount: itemCount,
            itemBuilder: (context, index) {
              if (index == itemCount - 1) {
                if (friendsStore.canLoadMore) {
                  friendsStore.loadMoreFriends();
                }

                if (friendsStore.isLoadingMore) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return const SizedBox.shrink();
              }

              final friend = friendsStore.friends[index];

              return UserListTile(
                user: friend,
                onPressed: () => friendsStore.onUserPressed(friend.id),
              );
            },
          ),
        );
      },
    );
  }
}
