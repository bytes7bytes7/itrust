import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/common.dart';
import '../../application/stores/comment/comment_store.dart';
import '../widgets/widgets.dart';

const _appBarHeight = kToolbarHeight;
const _loadCommentKey = 'load comment';
const _listScrollKey = PageStorageKey('comment screen scroll key');

final _getIt = GetIt.instance;

class CommentScreen extends HookWidget {
  const CommentScreen({
    super.key,
    required this.postID,
    required this.commentID,
  });

  final String postID;
  final String commentID;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final commentStore = useMemoized(() => _getIt.get<CommentStore>());

    useEffect(
      () {
        commentStore.loadComment(postID: postID, commentID: commentID);
        return null;
      },
      const [_loadCommentKey],
    );

    useReaction<String>(
      (_) => commentStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    useReaction<String>(
      (_) => commentStore.commentReplyStore.error,
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
        commentStore: commentStore,
        l10n: l10n,
      ),
      body: _Body(
        commentStore: commentStore,
        l10n: l10n,
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    required this.commentStore,
    required this.l10n,
  });

  final CommentStore commentStore;
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
          onPressed: commentStore.onBackButtonPressed,
        ),
        centerTitle: true,
        title: Text(
          l10n.comment_screen_title,
        ),
      ),
    );
  }
}

class _Body extends HookWidget {
  const _Body({
    required this.commentStore,
    required this.l10n,
  });

  final CommentStore commentStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    useReaction<bool>(
      (_) => commentStore.moveUp,
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
        final comment = commentStore.comment;

        if (commentStore.isLoading || comment == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (commentStore.hasError) {
          return LoadingErrorContainer(
            onRetry: commentStore.refresh,
          );
        }

        if (!commentStore.isAllLoaded) {
          return RefreshIndicator(
            onRefresh: () async => commentStore.refresh(),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    key: _listScrollKey,
                    controller: scrollController,
                    children: [
                      CommentListTile(
                        isPreview: false,
                        comment: comment,
                        onLikePressed: commentStore.onLikeCommentPressed,
                        onAuthorPressed: commentStore.onAuthorPressed,
                      ),
                      if (commentStore.commentReplyStore.isLoading)
                        const Center(
                          child: CircularProgressIndicator(),
                        )
                      else
                        SmallLoadingErrorContainer(
                          onRetry: commentStore.commentReplyStore.refresh,
                        ),
                    ],
                  ),
                ),
                MessageField(
                  hint: l10n.comment_field_hint,
                  onSendPressed: commentStore.reply,
                  onEmojiPressed: () {},
                ),
              ],
            ),
          );
        }

        final itemCount = commentStore.commentReplyStore.replies.length + 3;

        return RefreshIndicator(
          onRefresh: () async => commentStore.refresh(),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  key: _listScrollKey,
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: scrollController,
                  itemCount: itemCount,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return CommentListTile(
                        isPreview: false,
                        comment: comment,
                        onLikePressed: commentStore.onLikeCommentPressed,
                        onAuthorPressed: commentStore.onAuthorPressed,
                      );
                    }

                    if (index == 1) {
                      return SectionTitle(
                        title: l10n.amount_of_comments(
                          commentStore.commentReplyStore.replies.length,
                        ),
                      );
                    }

                    if (index == itemCount - 1) {
                      if (commentStore.commentReplyStore.isLoadingMore) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      if (commentStore.commentReplyStore.canLoadMore) {
                        commentStore.commentReplyStore.loadMoreReplies();
                      }

                      return const SizedBox.shrink();
                    }

                    final reply =
                        commentStore.commentReplyStore.replies[index - 2];

                    return CommentListTile(
                      comment: reply,
                      isPreview: true,
                      onPressed: () =>
                          commentStore.commentReplyStore.onCommentPressed(
                        commentID: reply.id,
                      ),
                      onLikePressed: () => commentStore.commentReplyStore
                          .onLikeReplyPressed(replyID: reply.id),
                      onCommentPressed: () => commentStore.commentReplyStore
                          .onCommentReplyButtonPressed(commentID: reply.id),
                      onAuthorPressed: () => commentStore.commentReplyStore
                          .onAuthorPressed(userID: reply.authorID),
                    );
                  },
                ),
              ),
              MessageField(
                hint: l10n.comment_field_hint,
                onSendPressed: commentStore.reply,
                onEmojiPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
