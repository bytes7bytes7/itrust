import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/stores/sync_store.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/services/feed_service.dart';
import '../../coordinators/feed_coordinator.dart';
import '../../providers/feed_string_provider.dart';

part 'feed_store.g.dart';

@injectable
class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore extends SyncStore with Store {
  _FeedStore({
    required FeedService feedService,
    required UserService userService,
    required PostService postService,
    required FeedCoordinator feedCoordinator,
    required FeedStringProvider feedStringProvider,
    required Mapster mapster,
  })  : _feedService = feedService,
        _userService = userService,
        _postService = postService,
        _feedCoordinator = feedCoordinator,
        _feedStringProvider = feedStringProvider,
        _mapster = mapster;

  final FeedService _feedService;
  final UserService _userService;
  final PostService _postService;
  final FeedCoordinator _feedCoordinator;
  final FeedStringProvider _feedStringProvider;
  final Mapster _mapster;
  String? _processingCategory;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _selectedCategory;

  @readonly
  List<PostVM> _posts = const [];

  @readonly
  bool _canLoadMore = true;

  @readonly
  bool _isLoadingMore = false;

  @computed
  bool get hasError => _error.isNotEmpty;

  @action
  void selectCategory(String? category) {
    if (_selectedCategory != category) {
      _selectedCategory = category;
      loadPosts(category);
    }
  }

  @action
  Future<void> loadPosts(
    String? category, {
    bool refresh = false,
  }) async {
    _processingCategory = category;

    await perform(
      () async {
        try {
          final data = await _feedService.loadPosts(
            category: category,
          );

          if (_processingCategory == category) {
            _posts = await _parsePosts(data, refresh: refresh);
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
  Future<void> loadMorePosts() async {
    await perform(
      () async {
        try {
          final category = _selectedCategory;
          final lastPostID = _posts.lastOrNull?.id;

          final data = await _feedService.loadPosts(
            category: category,
            lastPostID:
                lastPostID != null ? PostID.fromString(lastPostID) : null,
          );

          if (_processingCategory == category) {
            // TODO: there can be a problem with caching
            final newPosts = await _parsePosts(data, refresh: false);

            _canLoadMore = false;

            if (newPosts.isNotEmpty) {
              doAfterDelay(() {
                _canLoadMore = true;
              });
            }

            _posts = List.of(_posts)..addAll(newPosts);
          }
        } catch (e) {
          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _error = _feedStringProvider.canNotLoadPosts;
        }
      },
      setIsLoading: (v) => _isLoadingMore = v,
      removeError: () => _error = '',
    );
  }

  @action
  void refresh() {
    final selectedCategory = _selectedCategory;
    loadPosts(selectedCategory, refresh: true);
  }

  @action
  Future<void> onLikeButtonPressed({required String postID}) async {
    final post = _posts.firstWhereOrNull((e) => e.id == postID);

    if (post == null) {
      return;
    }

    await perform(
      () async {
        if (post.likedByMe) {
          try {
            _updatePost(id: postID, likedByMe: false);

            final updatedPost =
                await _postService.unlikePost(PostID.fromString(postID));

            final posts = List.of(_posts);
            final index = posts.indexWhere((e) => e.id == updatedPost.id.str);

            if (index == -1) {
              return;
            }

            final author =
                await _userService.getUserByID(id: updatedPost.authorID);

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              return;
            }

            posts[index] = _mapster.map2(updatedPost, author, To<PostVM>());

            _posts = posts;
          } catch (e) {
            _error = _feedStringProvider.canNotUnlikePost;
            doAfterDelay(() {
              _error = '';
            });

            _updatePost(id: postID, likedByMe: true);
          }
        } else {
          try {
            _updatePost(id: postID, likedByMe: true);

            final updatedPost =
                await _postService.likePost(PostID.fromString(postID));

            final posts = List.of(_posts);
            final index = posts.indexWhere((e) => e.id == updatedPost.id.str);

            if (index == -1) {
              return;
            }

            final author =
                await _userService.getUserByID(id: updatedPost.authorID);

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              return;
            }

            posts[index] = _mapster.map2(updatedPost, author, To<PostVM>());

            _posts = posts;
          } catch (e) {
            _error = _feedStringProvider.canNotLikePost;
            doAfterDelay(() {
              _error = '';
            });

            _updatePost(id: postID, likedByMe: false);
          }
        }
      },
      startLoading: false,
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onPostPressed({required String postID}) {
    _feedCoordinator.onPostPressed(postID: postID);
  }

  void onCommentButtonPressed({required String postID}) {
    _feedCoordinator.onCommentButtonPressed(postID: postID);
  }

  void onAuthorPressed({required String userID}) {
    _feedCoordinator.onAuthorPressed(userID: userID);
  }

  void _updatePost({
    required String id,
    required bool likedByMe,
  }) {
    final posts = List.of(_posts);
    final index = posts.indexWhere((e) => e.id == id);

    if (index == -1) {
      return;
    }

    final post = posts[index];

    posts[index] = post.copyWith(
      likedByMe: likedByMe,
    );

    _posts = posts;
  }

  Future<List<PostVM>> _parsePosts(
    List<Post> data, {
    required bool refresh,
  }) async {
    final newPosts = <PostVM>[];
    for (final post in data) {
      final author = await _userService.getUserByID(
        id: post.authorID,
        cached: !refresh,
      );

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

    return newPosts;
  }
}
