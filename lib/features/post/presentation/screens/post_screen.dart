import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../common/common.dart';
import '../../application/stores/post/post_store.dart';
import '../widgets/widgets.dart';

const _appBarHeight = kToolbarHeight;

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
      const [],
    );

    useEffect(
      () {
        postStore.postCommentStore.loadPostComments(postID: postID);
        return null;
      },
      const [],
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

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
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

class _Body extends StatelessWidget {
  const _Body({
    required this.postStore,
    required this.l10n,
  });

  final PostStore postStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final post = postStore.post;

        if (postStore.isLoading || post == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (postStore.postCommentStore.isLoading) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    PostCard(
                      post: post,
                      isPreview: false,
                      onLikePressed: postStore.onLikePostPressed,
                    ),
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ],
                ),
              ),
              MessageField(
                hint: l10n.comment_field_hint,
                onSendPressed: () {},
                onEmojiPressed: () {},
              ),
            ],
          );
        }

        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: postStore.postCommentStore.comments.length + 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return PostCard(
                      post: post,
                      isPreview: false,
                      onLikePressed: postStore.onLikePostPressed,
                    );
                  }

                  if (index == 1) {
                    return SectionTitle(
                      title: l10n.amount_of_comments(
                        postStore.postCommentStore.comments.length,
                      ),
                    );
                  }

                  final comment =
                      postStore.postCommentStore.comments[index - 2];

                  return CommentCard(
                    comment: comment,
                    isPreview: true,
                    onPressed: () => postStore.postCommentStore
                        .onCommentPressed(commentID: comment.id),
                    onLikePressed: () => postStore.postCommentStore
                        .onLikeCommentPressed(commentID: comment.id),
                    onCommentPressed: () => postStore.postCommentStore
                        .onCommentReplyButtonPressed(commentID: comment.id),
                  );
                },
              ),
            ),
            MessageField(
              hint: l10n.comment_field_hint,
              onSendPressed: () {},
              onEmojiPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
