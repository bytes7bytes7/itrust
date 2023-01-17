import 'dart:async';

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

abstract class _FeedStore with Store {
  _FeedStore({
    required FeedService feedService,
    required this.categoryStore,
  }) : _feedService = feedService;

  final FeedService _feedService;
  var _processingCategory = '';
  final _loadingQueue = <int>[];
  var _currentLoadingId = 0;

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

        _wrap(_currentLoadingId++, () async {
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

  Future<void> _wrap(int id, FutureOr<void> Function() callback) async {
    _loadingQueue.add(id);

    _isLoading = true;
    _error = '';

    await callback();

    _loadingQueue.remove(id);
    if (_loadingQueue.isEmpty) {
      _isLoading = false;
    }
  }
}
