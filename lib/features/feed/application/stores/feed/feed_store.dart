import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/services/feed_service.dart';
import '../../coordinators/feed_coordinator.dart';
import '../../providers/feed_string_repository.dart';

part 'feed_store.g.dart';

const _limit = 10;

@injectable
class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore extends SyncStore with Store {
  _FeedStore({
    required FeedService feedService,
    required FeedCoordinator feedCoordinator,
    required FeedStringProvider feedStringProvider,
    required Mapster mapster,
  })  : _feedService = feedService,
        _feedCoordinator = feedCoordinator,
        _feedStringProvider = feedStringProvider,
        _mapster = mapster;

  final FeedService _feedService;
  final FeedCoordinator _feedCoordinator;
  final FeedStringProvider _feedStringProvider;
  final Mapster _mapster;
  var _processingCategory = '';

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String _selectedCategory = '';

  @readonly
  List<PostVM> _posts = const [];

  @computed
  bool get hasError => _error.isNotEmpty;

  @action
  void selectCategory(String category) {
    if (_selectedCategory != category) {
      _selectedCategory = category;
      loadPosts(category);
    }
  }

  @action
  void loadPosts(String category) {
    _processingCategory = category;

    perform(
      () async {
        try {
          final data = await _feedService.loadPosts(
            category: category,
            limit: _limit,
          );

          if (_processingCategory == category) {
            // TODO: implement
            const author = User.end(
              id: UserID('user'),
              avatarUrls: [],
              email: 'email@email.com',
              firstName: 'first',
              lastName: 'last',
            );

            _posts = data
                .map(
                  (post) => _mapster.map2(
                    post,
                    author,
                    To<PostVM>(),
                  ),
                )
                .toList();
          }
        } catch (e) {
          _error = _feedStringProvider.canNotLoadPosts;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void retry() {
    final selectedCategory = _selectedCategory;

    if (selectedCategory.isNotEmpty) {
      loadPosts(selectedCategory);
    }
  }

  @action
  void onLikeButtonPressed({required String postID}) {
    _feedService.likePost(postID: PostID(postID));
  }

  void onPostPressed({required String postID}) {
    _feedCoordinator.onPostPressed(postID);
  }

  void onCommentButtonPressed({required String postID}) {
    _feedCoordinator.onPostButtonPressed(postID);
  }
}
