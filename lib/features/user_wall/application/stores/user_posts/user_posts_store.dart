import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/end_user_repository.dart';
import '../../../../common/application/stores/sync_store.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../../../common/domain/entities/entities.dart';
import '../../../../common/domain/services/post_service.dart';
import '../../../../common/domain/services/user_service.dart';
import '../../../../common/domain/value_objects/value_objects.dart';
import '../../coordinators/user_wall_coordinator.dart';
import '../../providers/user_posts_string_provider.dart';

part 'user_posts_store.g.dart';

@injectable
class UserPostsStore = _UserPostsStore with _$UserPostsStore;

abstract class _UserPostsStore extends SyncStore with Store {
  _UserPostsStore({
    required PostService postService,
    required UserService userService,
    required UserWallCoordinator coordinator,
    required UserPostsStringProvider userPostsStringProvider,
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _postService = postService,
        _userService = userService,
        _coordinator = coordinator,
        _userPostsStringProvider = userPostsStringProvider,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final PostService _postService;
  final UserService _userService;
  final UserWallCoordinator _coordinator;
  final UserPostsStringProvider _userPostsStringProvider;
  final EndUserRepository _endUserRepository;
  final Mapster _mapster;
  var _isInitialized = false;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _userID;

  @readonly
  EndUser? _user;

  @readonly
  List<PostVM> _posts = const [];

  @readonly
  bool _canLoadMore = true;

  @readonly
  bool _isLoadingMore = false;

  @computed
  bool get hasError => _error.isNotEmpty;

  void init(String userID) {
    if (!_isInitialized) {
      _userID = userID;
      _isInitialized = true;
    }
  }

  @action
  void loadPosts({
    bool refresh = false,
  }) {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          try {
            final user = await _userService.getUserByID(
              id: UserID.fromString(userID),
              cached: !refresh,
            );

            if (user == null) {
              return;
            }

            if (user is! EndUser) {
              return;
            }

            await _endUserRepository.addOrUpdate(user: user);
            _user = user;
          } catch (e) {
            _error = _userPostsStringProvider.canNotLoadUser;
          }

          final user = _user;

          if (user == null) {
            return;
          }

          final posts = await _postService.loadUserPosts(
            userID: user.id,
          );

          final newPosts = <PostVM>[];
          for (final post in posts) {
            newPosts.add(
              _mapster.map2(
                post,
                user,
                To<PostVM>(),
              ),
            );
          }

          _posts = newPosts;
        } catch (e) {
          _error = _userPostsStringProvider.canNotLoadPosts;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void refresh() {
    loadPosts(refresh: true);
  }

  @action
  void loadMorePosts() {
    perform(
      () async {
        try {
          final user = _user;
          final lastPostID = _posts.lastOrNull?.id;

          if (user == null) {
            return;
          }

          final data = await _postService.loadUserPosts(
            userID: user.id,
            lastPostID:
                lastPostID != null ? PostID.fromString(lastPostID) : null,
          );

          final newPosts = <PostVM>[];
          for (final post in data) {
            newPosts.add(
              _mapster.map2(
                post,
                user,
                To<PostVM>(),
              ),
            );
          }

          _canLoadMore = false;

          if (newPosts.isNotEmpty) {
            doAfterDelay(() {
              _canLoadMore = true;
            });
          }

          _posts = List.of(_posts)..addAll(newPosts);
        } catch (e) {
          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _error = _userPostsStringProvider.canNotLoadPosts;
        }
      },
      setIsLoading: (v) => _isLoadingMore = v,
      removeError: () => _error = '',
    );
  }

  @action
  void onLikeButtonPressed({required String postID}) {
    final user = _user;
    final post = _posts.firstWhereOrNull((e) => e.id == postID);

    if (user == null || post == null) {
      return;
    }

    perform(
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

            posts[index] = _mapster.map2(updatedPost, user, To<PostVM>());

            _posts = posts;
          } catch (e) {
            _error = _userPostsStringProvider.canNotUnlikePost;
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

            posts[index] = _mapster.map2(updatedPost, user, To<PostVM>());

            _posts = posts;
          } catch (e) {
            _error = _userPostsStringProvider.canNotLikePost;
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
    _coordinator.onPostPressed(postID: postID);
  }

  void onCommentButtonPressed({required String postID}) {
    _coordinator.onCommentButtonPressed(postID: postID);
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
}
