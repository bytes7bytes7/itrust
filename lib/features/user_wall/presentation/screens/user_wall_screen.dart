import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/user_info/user_info_store.dart';
import '../../application/view_models/user_info_vm/user_info_vm.dart';

const _loadUserInfoKey = 'load user info';
const _paddingH = 20.0;

final _getIt = GetIt.instance;

class UserWallScreen extends HookWidget {
  const UserWallScreen({
    super.key,
    required this.userID,
  });

  final String userID;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final userInfoStore =
        useMemoized(() => _getIt.get<UserInfoStore>()..init(userID));

    useEffect(
      () {
        userInfoStore.loadInfo();
        return null;
      },
      [_loadUserInfoKey],
    );

    useReaction<String>(
      (_) => userInfoStore.error,
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
        userInfoStore: userInfoStore,
      ),
      body: _Body(
        l10n: l10n,
        userInfoStore: userInfoStore,
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({
    required this.l10n,
    required this.userInfoStore,
  });

  final AppLocalizations l10n;
  final UserInfoStore userInfoStore;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        l10n.user_wall_screen_title,
      ),
      leading: FilledIconButton(
        iconPath: Assets.image.svg.arrowBack.path,
        onPressed: userInfoStore.onBackButtonPressed,
      ),
      actions: [
        FilledIconButton(
          iconPath: Assets.image.svg.moreVert.path,
          onPressed: () {},
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.l10n,
    required this.userInfoStore,
  });

  final AppLocalizations l10n;
  final UserInfoStore userInfoStore;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Observer(
      builder: (context) {
        if (userInfoStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final userInfo = userInfoStore.userInfo;

        if (userInfo == null) {
          // TODO: implement
          return const SizedBox.shrink();
        }

        return RefreshIndicator(
          onRefresh: () async => userInfoStore.refresh(),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              // if (index == itemCount - 1) {
              //   if (userInfoStore.canLoadMore) {
              //     userInfoStore.loadMoreFriends();
              //   }
              //
              //   if (userInfoStore.isLoadingMore) {
              //     return const Center(
              //       child: CircularProgressIndicator(),
              //     );
              //   }
              //
              //   return const SizedBox.shrink();
              // }

              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _paddingH,
                ),
                child: _UserInfoContainer(
                  l10n: l10n,
                  userInfo: userInfo,
                ),
              );

              // final friend = userInfoStore.friends[index];
              //
              // return UserListTile(
              //   user: friend,
              //   onPressed: () => userInfoStore.onUserPressed(friend.id),
              // );
            },
          ),
        );
      },
    );
  }
}

class _UserInfoContainer extends StatelessWidget {
  const _UserInfoContainer({
    required this.l10n,
    required this.userInfo,
  });

  final AppLocalizations l10n;
  final UserInfoVM userInfo;

  @override
  Widget build(BuildContext context) {
    final endUserInfo = userInfo;

    return Column(
      children: [
        UserInfoCard(
          id: userInfo.user.id,
          nick: userInfo.user.nick,
          name: userInfo.user.name,
          avatarUrl: userInfo.user.avatarUrl,
        ),
        _Actions(
          l10n: l10n,
        ),
        if (endUserInfo is EndUserInfoVM)
          _EndUserStatistics(
            l10n: l10n,
            userInfo: endUserInfo,
          ),
      ],
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions({
    required this.l10n,
  });

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: SmallPrimaryButton(
              onPressed: () {},
              text: l10n.send_friend_bid_button,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: SmallPrimaryButton(
              onPressed: () {},
              text: l10n.open_chat_button,
            ),
          ),
        ],
      ),
    );
  }
}

class _EndUserStatistics extends StatelessWidget {
  const _EndUserStatistics({
    required this.l10n,
    required this.userInfo,
  });

  final AppLocalizations l10n;
  final EndUserInfoVM userInfo;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: _AmountContainer(
              title: l10n.friends_amount,
              amount: userInfo.amIFriend
                  ? userInfo.friendsAmountWithMe
                  : userInfo.friendsAmountWithoutMe,
              theme: theme,
            ),
          ),
          Expanded(
            child: _AmountContainer(
              title: l10n.posts_amount,
              amount: userInfo.postsAmount,
              theme: theme,
            ),
          ),
          Expanded(
            child: _AmountContainer(
              title: l10n.subscribers_amount,
              amount: userInfo.amISubscriber
                  ? userInfo.subscribersAmountWithMe
                  : userInfo.subscribersAmountWithoutMe,
              theme: theme,
            ),
          ),
        ],
      ),
    );
  }
}

class _AmountContainer extends StatelessWidget {
  const _AmountContainer({
    required this.title,
    required this.amount,
    required this.theme,
  });

  final String title;
  final String amount;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: theme.textTheme.bodyText1?.copyWith(
            color: theme.hintColor,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          amount,
          style: theme.textTheme.subtitle2,
        ),
      ],
    );
  }
}
