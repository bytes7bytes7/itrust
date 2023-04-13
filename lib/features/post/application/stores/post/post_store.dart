import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../coordinators/post_coordinator.dart';
import '../../providers/post_string_provider.dart';
import '../post_comment/post_comment_store.dart';

part 'post_store.g.dart';

@injectable
class PostStore = _PostStore with _$PostStore;

abstract class _PostStore extends SyncStore with Store {
  _PostStore({
    required this.postCommentStore,
    required PostService postService,
    required UserService userService,
    required PostCoordinator postCoordinator,
    required PostStringProvider postStringProvider,
    required Mapster mapster,
  })  : _postService = postService,
        _userService = userService,
        _postCoordinator = postCoordinator,
        _postStringProvider = postStringProvider,
        _mapster = mapster;

  final PostCommentStore postCommentStore;
  final PostService _postService;
  final UserService _userService;
  final PostCoordinator _postCoordinator;
  final PostStringProvider _postStringProvider;
  final Mapster _mapster;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _postID;

  @readonly
  PostVM? _post;

  @computed
  bool get hasError => _error.isNotEmpty;

  @computed
  bool get isAllLoaded =>
      !_isLoading &&
      !hasError &&
      !postCommentStore.isLoading &&
      !postCommentStore.hasError;

  @action
  void loadPost({required String postID}) {
    perform(
      () async {
        try {
          _postID = postID;

          final post = await _postService.loadPost(PostID.fromString(postID));

          final author = await _userService.getUserByID(id: post.authorID);

          if (author == null) {
            // TODO: maybe create deleted user or don't show their posts
            return;
          }

          _post = _mapster.map2(post, author, To<PostVM>());

          postCommentStore.loadPostComments(postID: postID);
        } catch (e) {
          _error = _postStringProvider.canNotLoadPost;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  Future<void> refresh() async {
    final postID = _postID;

    if (postID != null) {
      loadPost(postID: postID);
    }
  }

  @action
  void retry() {
    final postID = _postID;

    if (postID != null) {
      loadPost(postID: postID);
    }
  }

  @action
  void onLikePostPressed() {
    final post = _post;

    if (post == null) {
      return;
    }

    perform(
      () async {
        if (post.likedByMe) {
          try {
            _updatePost(likedByMe: false);

            final updatedPost =
                await _postService.unlikePost(PostID.fromString(post.id));

            final author =
                await _userService.getUserByID(id: updatedPost.authorID);

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              return;
            }

            _post = _mapster.map2(updatedPost, author, To<PostVM>());
          } catch (e) {
            _error = _postStringProvider.canNotUnlikePost;
            doAfterDelay(() {
              _error = '';
            });

            _updatePost(likedByMe: true);
          }
        } else {
          try {
            _updatePost(likedByMe: true);

            final updatedPost =
                await _postService.likePost(PostID.fromString(post.id));

            final author =
                await _userService.getUserByID(id: updatedPost.authorID);

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              return;
            }

            _post = _mapster.map2(updatedPost, author, To<PostVM>());
          } catch (e) {
            _error = _postStringProvider.canNotLikePost;
            doAfterDelay(() {
              _error = '';
            });

            _updatePost(likedByMe: false);
          }
        }
      },
      startLoading: false,
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _postCoordinator.onBackButtonPressed();
  }

  void _updatePost({
    required bool likedByMe,
  }) {
    final post = _post;

    if (post == null) {
      return;
    }

    _post = post.copyWith(
      likedByMe: likedByMe,
    );
  }
}
