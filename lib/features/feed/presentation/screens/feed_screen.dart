import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/application.dart';
import '../widgets/widgets.dart';

const _appBarHeight = kToolbarHeight;
const _categoryListHeight = 54.0;
const _categoryListTitlePaddingH = 0.0;
const _categoryListKey = PageStorageKey('feed category list');

final _getIt = GetIt.instance;

class FeedScreen extends HookWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final categoryStore =
        useMemoized(() => _getIt.get<CategoryStore>()..init());

    useReaction<String>(
      (_) => categoryStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    useReaction<String>(
      (_) => categoryStore.feedStore.error,
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
      ),
      body: _Body(
        l10n: l10n,
        categoryStore: categoryStore,
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({
    required this.l10n,
  });

  final AppLocalizations l10n;

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        title: Text(
          l10n.feed_tab_title,
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.l10n,
    required this.categoryStore,
  });

  final AppLocalizations l10n;
  final CategoryStore categoryStore;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Observer(
      builder: (context) {
        if (categoryStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (categoryStore.hasError) {
          return LoadingErrorContainer(
            onRetry: categoryStore.refresh,
          );
        }

        if (!categoryStore.hasError && categoryStore.feedStore.isLoading) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CategoryList(
                key: _categoryListKey,
                categoryStore: categoryStore,
              ),
              const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            ],
          );
        }

        if (categoryStore.feedStore.hasError &&
            categoryStore.feedStore.posts.isEmpty) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CategoryList(
                key: _categoryListKey,
                categoryStore: categoryStore,
              ),
              if (categoryStore.feedStore.isLoading)
                const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              else
                Expanded(
                  child: LoadingErrorContainer(
                    onRetry: categoryStore.feedStore.refresh,
                  ),
                ),
            ],
          );
        }

        if (categoryStore.feedStore.posts.isEmpty) {
          // TODO: add refresh indicator

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CategoryList(
                key: _categoryListKey,
                categoryStore: categoryStore,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.lottie.noFeed.lottie(),
                      Text(
                        l10n.feed_has_no_posts,
                        style: theme.textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }

        return RefreshIndicator(
          onRefresh: () async => categoryStore.refresh(),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: false,
                snap: true,
                floating: true,
                expandedHeight: _categoryListHeight,
                automaticallyImplyLeading: false,
                titleSpacing: _categoryListTitlePaddingH,
                title: _CategoryList(
                  key: _categoryListKey,
                  categoryStore: categoryStore,
                ),
              ),
              _PostList(
                l10n: l10n,
                feedStore: categoryStore.feedStore,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({
    super.key,
    required this.categoryStore,
  });

  final CategoryStore categoryStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (categoryStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (categoryStore.categories.isEmpty) {
          return const SizedBox.shrink();
        } else {
          return CategoryList(
            height: _categoryListHeight,
            categories: categoryStore.categories,
            selectedCategory: categoryStore.selectedCategory,
            onCategoryPressed: categoryStore.onCategoryPressed,
          );
        }
      },
    );
  }
}

class _PostList extends StatelessWidget {
  const _PostList({
    required this.l10n,
    required this.feedStore,
  });

  final AppLocalizations l10n;
  final FeedStore feedStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (feedStore.isLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        final length = feedStore.posts.length + 1;

        return SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: length,
            (context, index) {
              if (index == length - 1) {
                if (feedStore.canLoadMore) {
                  feedStore.loadMorePosts();
                }

                if (feedStore.isLoadingMore) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return const SizedBox.shrink();
              }

              final post = feedStore.posts[index];

              return PostCard(
                post: post,
                isPreview: true,
                onPressed: () => feedStore.onPostPressed(postID: post.id),
                onLikePressed: () =>
                    feedStore.onLikeButtonPressed(postID: post.id),
                onCommentPressed: () =>
                    feedStore.onPostPressed(postID: post.id),
              );
            },
          ),
        );
      },
    );
  }
}
