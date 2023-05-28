import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/common.dart';
import '../../application/stores/post/post_store.dart';
import '../widgets/widgets.dart';

const _appBarHeight = kToolbarHeight;
const _loadPostKey = 'load post';
const _pageScrollKey = PageStorageKey('post screen scroll key');

final _getIt = GetIt.instance;

class PostScreen extends HookWidget {
  const PostScreen({
    super.key,
    required this.postID,
  });

  final String postID;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final postStore = useMemoized(() => _getIt.get<PostStore>());

    useEffect(
      () {
        postStore.loadPost(postID: postID);
        return null;
      },
      const [_loadPostKey],
    );

    useReaction<String>(
      (_) => postStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    useReaction<String>(
      (_) => postStore.postCommentStore.error,
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
        postStore: postStore,
        l10n: l10n,
      ),
      body: _Body(
        postStore: postStore,
        l10n: l10n,
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    required this.postStore,
    required this.l10n,
  });

  final PostStore postStore;
  final AppLocalizations l10n;

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leading: FilledIconButton(
          iconPath: Assets.image.svg.arrowBack.path,
          onPressed: postStore.onBackButtonPressed,
        ),
        centerTitle: true,
        title: Text(
          l10n.post_screen_title,
        ),
      ),
    );
  }
}

class _Body extends HookWidget {
  const _Body({
    required this.postStore,
    required this.l10n,
  });

  final PostStore postStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    useReaction<bool>(
      (_) => postStore.moveUp,
      (moveUp) {
        if (moveUp) {
          scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeIn,
          );
        }
      },
    );

    return Observer(
      builder: (context) {
        final post = postStore.post;

        if (postStore.isLoading || post == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (postStore.hasError) {
          return LoadingErrorContainer(
            onRetry: postStore.refresh,
          );
        }

        if (!postStore.isAllLoaded) {
          return RefreshIndicator(
            onRefresh: () async => postStore.refresh(),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    key: _pageScrollKey,
                    controller: scrollController,
                    children: [
                      PostListTile(
                        post: post,
                        isPreview: false,
                        onLikePressed: postStore.onLikePostPressed,
                        onAuthorPressed: postStore.onAuthorPressed,
                      ),
                      if (postStore.postCommentStore.isLoading)
                        const Center(
                          child: CircularProgressIndicator(),
                        )
                      else
                        SmallLoadingErrorContainer(
                          onRetry: postStore.postCommentStore.refresh,
                        ),
                    ],
                  ),
                ),
                MessageField(
                  hint: l10n.comment_field_hint,
                  onSendPressed: postStore.reply,
                  onEmojiPressed: () {},
                ),
              ],
            ),
          );
        }

        final itemCount = postStore.postCommentStore.comments.length + 3;

        return RefreshIndicator(
          onRefresh: () async => postStore.refresh(),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  key: _pageScrollKey,
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: scrollController,
                  itemCount: itemCount,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return PostListTile(
                        post: post,
                        isPreview: false,
                        onLikePressed: postStore.onLikePostPressed,
                        onAuthorPressed: postStore.onAuthorPressed,
                      );
                    }

                    if (index == 1) {
                      return SectionTitle(
                        title: l10n.amount_of_comments(
                          postStore.postCommentStore.comments.length,
                        ),
                      );
                    }

                    if (index == itemCount - 1) {
                      if (postStore.postCommentStore.isLoadingMore) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      if (postStore.postCommentStore.canLoadMore) {
                        postStore.postCommentStore.loadMoreComments();
                      }

                      return const SizedBox.shrink();
                    }

                    final comment =
                        postStore.postCommentStore.comments[index - 2];

                    return CommentListTile(
                      comment: comment,
                      isPreview: true,
                      onPressed: () => postStore.postCommentStore
                          .onCommentPressed(commentID: comment.id),
                      onLikePressed: () => postStore.postCommentStore
                          .onLikeCommentPressed(commentID: comment.id),
                      onCommentPressed: () => postStore.postCommentStore
                          .onCommentReplyButtonPressed(commentID: comment.id),
                      onAuthorPressed: () =>
                          postStore.postCommentStore.onAuthorPressed(
                        userID: comment.authorID,
                      ),
                    );
                  },
                ),
              ),
              MessageField(
                hint: l10n.comment_field_hint,
                onSendPressed: postStore.reply,
                onEmojiPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
