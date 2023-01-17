import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/service/feed_service.dart';
import '../category/category_store.dart';

part 'feed_store.g.dart';

@injectable
class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore extends SyncStore with Store {
  _FeedStore({
    required FeedService feedService,
    required this.categoryStore,
  }) : _feedService = feedService;

  final FeedService _feedService;
  var _processingCategory = '';

  final CategoryStore categoryStore;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  List<Post> _posts = const [];

  void init() {
    categoryStore.selectedCategory.observe((listener) {
      final category = listener.newValue;

      if (category != null) {
        _processingCategory = category;

        perform(
          () async {
            final data = await _feedService.loadPosts(category);

            if (_processingCategory == category) {
              _posts = data;
            }
          },
          setIsLoading: (v) => _isLoading = v,
          setError: (v) => _error = v,
        );
      }
    });
  }
}
