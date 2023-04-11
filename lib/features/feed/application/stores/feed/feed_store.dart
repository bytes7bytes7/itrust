import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/services/feed_service.dart';
import '../../coordinators/feed_coordinator.dart';
import '../../providers/feed_string_repository.dart';

part 'feed_store.g.dart';

@injectable
class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore extends SyncStore with Store {
  _FeedStore({
    required FeedService feedService,
    required UserService userService,
    required FeedCoordinator feedCoordinator,
    required FeedStringProvider feedStringProvider,
    required Mapster mapster,
  })  : _feedService = feedService,
        _userService = userService,
        _feedCoordinator = feedCoordinator,
        _feedStringProvider = feedStringProvider,
        _mapster = mapster;

  final FeedService _feedService;
  final UserService _userService;
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
          final lastPostID = _posts.lastOrNull?.id;

          final data = await _feedService.loadPosts(
            category: category,
            lastPostID:
                lastPostID != null ? PostID.fromString(lastPostID) : null,
          );

          if (_processingCategory == category) {
            final newPosts = <PostVM>[];
            for (final post in data) {
              final author = await _userService.getUserByID(id: post.authorID);

              if (author == null) {
                // TODO: maybe create deleted user or don't show their posts
                continue;
              }

              newPosts.add(
                _mapster.map2(
                  post,
                  author,
                  To<PostVM>(),
                ),
              );
            }

            _posts = newPosts;
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
    _feedService.likePost(postID: PostID.fromString(postID));
  }

  void onPostPressed({required String postID}) {
    _feedCoordinator.onPostPressed(postID);
  }

  void onCommentButtonPressed({required String postID}) {
    _feedCoordinator.onPostButtonPressed(postID);
  }
}
