import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/services/feed_service.dart';
import '../../coordinators/feed_coordinator.dart';
import '../category/category_store.dart';

part 'feed_store.g.dart';

@injectable
class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore extends SyncStore with Store {
  _FeedStore({
    required this.categoryStore,
    required FeedService feedService,
    required FeedCoordinator feedCoordinator,
  })  : _feedService = feedService,
        _feedCoordinator = feedCoordinator;

  final CategoryStore categoryStore;

  final FeedService _feedService;
  final FeedCoordinator _feedCoordinator;
  var _processingCategory = '';

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

  void onPostPressed() {
    _feedCoordinator.onPostPressed();
  }
}
