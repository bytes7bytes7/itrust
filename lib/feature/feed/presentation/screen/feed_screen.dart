import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../l10n/l10n.dart';
import '../../application/application.dart';
import '../widget/widget.dart';

const _paddingV = 10.0;

final _getIt = GetIt.instance;

class FeedScreen extends HookWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final feedStore = useMemoized(() {
      return _getIt.get<FeedStore>()..init();
    });

    useEffect(
      () {
        feedStore.categoryStore.loadCategories();
        return;
      },
      const [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.feed_tab_title,
        ),
      ),
      body: _Body(
        feedStore: feedStore,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.feedStore});

  final FeedStore feedStore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: _paddingV,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CategoryList(
            categoryStore: feedStore.categoryStore,
          ),
          _PostList(feedStore: feedStore),
        ],
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({
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
            categories: categoryStore.categories,
            selectedCategory: categoryStore.selectedCategory.value,
            onCategoryPressed: categoryStore.selectCategory,
          );
        }
      },
    );
  }
}

class _PostList extends StatelessWidget {
  const _PostList({
    required this.feedStore,
  });

  final FeedStore feedStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (feedStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Expanded(
          child: ListView.builder(
            itemCount: feedStore.posts.length,
            itemBuilder: (context, index) {
              final post = feedStore.posts[index];

              return PostCard(
                name: 'name ${post.authorID.str}',
                dateTime: '9:41',
                avatarUrl: null,
                mediaUrls: post.mediaUrls,
                text: post.text,
              );
            },
          ),
        );
      },
    );
  }
}
