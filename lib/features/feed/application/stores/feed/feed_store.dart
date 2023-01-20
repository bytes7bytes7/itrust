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
    required TwoEntitiesToViewModelMapper<Post, User, PostVM> postMapper,
  })  : _feedService = feedService,
        _feedCoordinator = feedCoordinator,
        _postMapper = postMapper;

  final CategoryStore categoryStore;

  final FeedService _feedService;
  final FeedCoordinator _feedCoordinator;
  final TwoEntitiesToViewModelMapper<Post, User, PostVM> _postMapper;
  var _processingCategory = '';

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  List<PostVM> _posts = const [];

  void init() {
    categoryStore.selectedCategory.observe((listener) {
      final category = listener.newValue;

      if (category != null) {
        _processingCategory = category;

        perform(
          () async {
            final data = await _feedService.loadPosts(category);

            if (_processingCategory == category) {
              // TODO: implement
              const user = User.end(
                id: UserID('user'),
                avatarUrls: [],
                email: 'email@email.com',
              );

              _posts = data
                  .map(
                    (post) => _postMapper.map(
                      post,
                      user,
                    ),
                  )
                  .toList();
            }
          },
          setIsLoading: (v) => _isLoading = v,
          setError: (v) => _error = v,
        );
      }
    });
  }

  void onPostPressed({required String postID}) {
    _feedCoordinator.onPostPressed(postID);
  }

  void onCommentButtonPressed({required String postID}) {
    _feedCoordinator.onPostButtonPressed(postID);
  }

  void onLikeButtonPressed({required String postID}) {
    // TODO: implement
    final index = _posts.indexWhere((e) => e.id == postID);

    if (index != -1) {
      final post = _posts[index];

      _posts = List.from(_posts)..[index] = post;
    }
  }
}
