import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/service/feed_service.dart';
import '../category/category_store.dart';

part 'feed_store.g.dart';

final _logger = Logger('$FeedStore');

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

  @override
  void setIsLoading(bool value) {
    _isLoading = value;
  }

  @override
  void setError(String value) {
    _error = value;
  }

  @readonly
  List<Post> _posts = const [];

  void init() {
    categoryStore.selectedCategory.observe((listener) {
      final category = listener.newValue;

      if (category != null) {
        _processingCategory = category;

        perform(() async {
          final data = await _feedService.loadPosts(category);

          _logger.finer(
            'category: $category '
            '_processingCategory: $_processingCategory',
          );
          if (_processingCategory == category) {
            _logger.finer('update category: $category');
            _posts = data;
          }
        });
      }
    });
  }
}
