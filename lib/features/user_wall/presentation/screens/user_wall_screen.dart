import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/application/view_models/view_models.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/user_info/user_info_store.dart';

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

    final userInfoStore = useMemoized(
      () => _getIt.get<UserInfoStore>()
        ..init(userID)
        ..userPostsStore.init(userID),
    );

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
          return LoadingErrorContainer(
            onRetry: userInfoStore.refresh,
          );
        }

        if (userInfoStore.userPostsStore.isLoading) {
          return ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              _UserInfoContainer(
                l10n: l10n,
                userInfo: userInfo,
                userInfoStore: userInfoStore,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 14,
                ),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          );
        }

        if (userInfoStore.userPostsStore.hasError &&
            userInfoStore.userPostsStore.posts.isEmpty) {
          // TODO: add scroll for horizontal phone position
          return Column(
            children: [
              _UserInfoContainer(
                l10n: l10n,
                userInfo: userInfo,
                userInfoStore: userInfoStore,
              ),
              if (userInfoStore.userPostsStore.isLoading)
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 14,
                  ),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              else
                LoadingErrorContainer(
                  onRetry: userInfoStore.userPostsStore.refresh,
                ),
            ],
          );
        }

        if (userInfoStore.userPostsStore.posts.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async => userInfoStore.refresh(),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                _UserInfoContainer(
                  l10n: l10n,
                  userInfo: userInfo,
                  userInfoStore: userInfoStore,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        l10n.user_does_not_have_posts,
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

        // user info, loading indicator
        final itemCount = userInfoStore.userPostsStore.posts.length + 2;

        return RefreshIndicator(
          onRefresh: () async => userInfoStore.refresh(),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              if (index == itemCount - 1) {
                if (userInfoStore.userPostsStore.canLoadMore) {
                  userInfoStore.userPostsStore.loadMorePosts();
                }

                if (userInfoStore.userPostsStore.isLoadingMore) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return const SizedBox.shrink();
              }

              if (index == 0) {
                return _UserInfoContainer(
                  l10n: l10n,
                  userInfo: userInfo,
                  userInfoStore: userInfoStore,
                );
              }

              final post = userInfoStore.userPostsStore.posts[index - 1];

              return PostListTile(
                post: post,
                isPreview: true,
                onPressed: () =>
                    userInfoStore.userPostsStore.onPostPressed(postID: post.id),
                onLikePressed: () => userInfoStore.userPostsStore
                    .onLikeButtonPressed(postID: post.id),
                onCommentPressed: () =>
                    userInfoStore.userPostsStore.onPostPressed(postID: post.id),
              );
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
    required this.userInfoStore,
  });

  final AppLocalizations l10n;
  final UserInfoVM userInfo;
  final UserInfoStore userInfoStore;

  @override
  Widget build(BuildContext context) {
    final endUserInfo = userInfo;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
      ),
      child: Column(
        children: [
          UserInfoCard(
            id: userInfo.user.id,
            nick: userInfo.user.nick,
            name: userInfo.user.name,
            avatarUrl: userInfo.user.avatarUrl,
          ),
          if (userInfoStore.showActionBtns)
            _Actions(
              l10n: l10n,
              userInfoStore: userInfoStore,
            ),
          if (endUserInfo is EndUserInfoVM)
            _EndUserStatistics(
              l10n: l10n,
              userInfo: endUserInfo,
              userInfoStore: userInfoStore,
            ),
        ],
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions({
    required this.l10n,
    required this.userInfoStore,
  });

  final AppLocalizations l10n;
  final UserInfoStore userInfoStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Row(
            children: [
              if (userInfoStore.showAddFriendBtn)
                Expanded(
                  child: SmallPrimaryButton(
                    onPressed: userInfoStore.sendFriendBid,
                    child: userInfoStore.isActionLoading
                        ? const ActionPrimaryLoadingIndicator()
                        : Text(l10n.send_friend_bid_btn),
                  ),
                ),
              if (userInfoStore.showCancelRequestBtn)
                Expanded(
                  child: SmallSecondaryButton(
                    onPressed: userInfoStore.cancelFriendBid,
                    child: userInfoStore.isActionLoading
                        ? const ActionSecondaryLoadingIndicator()
                        : Text(l10n.cancel_friend_bid_btn),
                  ),
                ),
              if (userInfoStore.showRemoveFriendBtn)
                Expanded(
                  child: SmallSecondaryButton(
                    onPressed: userInfoStore.removeFriend,
                    child: userInfoStore.isActionLoading
                        ? const ActionSecondaryLoadingIndicator()
                        : Text(l10n.remove_friend_btn),
                  ),
                ),
              if (userInfoStore.showRemoveSubscriberBtn)
                Expanded(
                  child: SmallSecondaryButton(
                    onPressed: userInfoStore.removeSubscriber,
                    child: userInfoStore.isActionLoading
                        ? const ActionSecondaryLoadingIndicator()
                        : Text(l10n.remove_subscriber_btn),
                  ),
                ),
              if (userInfoStore.showAcceptRequestBtn)
                Expanded(
                  child: SmallSecondaryButton(
                    onPressed: userInfoStore.acceptFriendBid,
                    child: userInfoStore.isActionLoading
                        ? const ActionSecondaryLoadingIndicator()
                        : Text(l10n.accept_friend_bid_btn),
                  ),
                ),
              if (userInfoStore.showUnsubscribeBtn)
                Expanded(
                  child: SmallSecondaryButton(
                    onPressed: userInfoStore.unsubscribe,
                    child: userInfoStore.isActionLoading
                        ? const ActionSecondaryLoadingIndicator()
                        : Text(l10n.unsubscribe_btn),
                  ),
                ),
              const SizedBox(
                width: 20,
              ),
              if (userInfoStore.showMessageBtn)
                Expanded(
                  child: SmallPrimaryButton(
                    onPressed: userInfoStore.canMessageBtnBePressed
                        ? userInfoStore.onMessageButtonPressed
                        : null,
                    child: userInfoStore.isActionLoading
                        ? const ActionPrimaryLoadingIndicator()
                        : Text(l10n.open_chat_btn),
                  ),
                ),
              if (userInfoStore.showDeclineRequestBtn)
                Expanded(
                  child: SmallSecondaryButton(
                    onPressed: userInfoStore.declineFriendBid,
                    child: userInfoStore.isActionLoading
                        ? const ActionSecondaryLoadingIndicator()
                        : Text(l10n.decline_friend_bid_btn),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _EndUserStatistics extends StatelessWidget {
  const _EndUserStatistics({
    required this.l10n,
    required this.userInfo,
    required this.userInfoStore,
  });

  final AppLocalizations l10n;
  final EndUserInfoVM userInfo;
  final UserInfoStore userInfoStore;

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
              theme: theme,
              title: l10n.friends_amount,
              amount: userInfo.amIFriend
                  ? userInfo.friendsAmountWithMe
                  : userInfo.friendsAmountWithoutMe,
              onPressed: userInfoStore.onFriendsPressed,
            ),
          ),
          Expanded(
            child: _AmountContainer(
              theme: theme,
              title: l10n.posts_amount,
              amount: userInfo.postsAmount,
            ),
          ),
          Expanded(
            child: _AmountContainer(
              theme: theme,
              title: l10n.subscribers_amount,
              amount: userInfo.amISubscriber
                  ? userInfo.subscribersAmountWithMe
                  : userInfo.subscribersAmountWithoutMe,
              onPressed: userInfoStore.onSubscribersPressed,
            ),
          ),
        ],
      ),
    );
  }
}

class _AmountContainer extends StatelessWidget {
  const _AmountContainer({
    required this.theme,
    required this.title,
    required this.amount,
    this.onPressed,
  });

  final ThemeData theme;
  final String title;
  final String amount;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
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
      ),
    );
  }
}
