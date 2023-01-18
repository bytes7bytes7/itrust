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

const _appBarHeight = 66.0;

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
        postStore.loadPost(postID);
        return null;
      },
      const [],
    );

    useEffect(
      () {
        postStore.commentStore.loadComments(postID);
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppBar(
            leading: FilledIconButton(
              iconPath: Assets.image.svg.arrowBack.path,
              onPressed: postStore.onBackButtonPressed,
            ),
            centerTitle: true,
            title: Text(
              l10n.post_screen_title,
            ),
          ),
        ],
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
        if (postStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (postStore.commentStore.isLoading) {
          return ListView(
            children: [
              PostCard(
                isPreview: false,
                name: postStore.authorName,
                avatarUrl: postStore.avatarUrl,
                dateTime: postStore.createdAt,
                text: postStore.text,
                mediaUrls: postStore.mediaUrls,
                isLickedByMe: postStore.isLickedByMe,
                onIsLickedChanged: postStore.onIsLickedPostChanged,
              ),
              const Center(
                child: CircularProgressIndicator(),
              ),
            ],
          );
        }

        return ListView.builder(
          itemCount: postStore.commentStore.comments.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return PostCard(
                isPreview: false,
                name: postStore.authorName,
                avatarUrl: postStore.avatarUrl,
                dateTime: postStore.createdAt,
                text: postStore.text,
                mediaUrls: postStore.mediaUrls,
                isLickedByMe: postStore.isLickedByMe,
                onIsLickedChanged: postStore.onIsLickedPostChanged,
              );
            }

            if (index == 1) {
              return SectionTitle(
                title: l10n.amount_of_comments(
                  postStore.commentStore.comments.length,
                ),
              );
            }

            return CommentCard(
              comment: postStore.commentStore.comments[index - 2],
              isPreview: true,
              onPressed: () {},
            );
          },
        );
      },
    );
  }
}
