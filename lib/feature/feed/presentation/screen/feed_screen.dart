import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../l10n/l10n.dart';
import '../../application/application.dart';
import '../widget/widget.dart';

final _getIt = GetIt.instance;

class FeedScreen extends HookWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final feedStore = useMemoized(() => _getIt.get<FeedStore>());

    useEffect(() {
      feedStore.loadCategories();
      return;
    });

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
    return Observer(
      builder: (context) {
        if (feedStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView(
          shrinkWrap: true,
          children: [
            if (feedStore.categories.isEmpty)
              const SizedBox.shrink()
            else
              CategoryList(
                categories: feedStore.categories,
                selectedCategory: feedStore.selectedCategory,
                onCategoryPressed: feedStore.selectCategory,
              ),
          ],
        );
      },
    );
  }
}
