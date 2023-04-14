import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/domain.dart';
import '../../coordinators/comment_coordinator.dart';
import '../../providers/post_comment_string_provider.dart';
import '../../view_models/comment/comment_vm.dart';

part 'post_comment_store.g.dart';

@injectable
class PostCommentStore = _PostCommentStore with _$PostCommentStore;

abstract class _PostCommentStore extends SyncStore with Store {
  _PostCommentStore({
    required CommentService commentService,
    required UserService userService,
    required CommentCoordinator commentCoordinator,
    required PostCommentStringProvider postCommentStringProvider,
    required Mapster mapster,
  })  : _commentService = commentService,
        _userService = userService,
        _commentCoordinator = commentCoordinator,
        _postCommentStringProvider = postCommentStringProvider,
        _mapster = mapster;

  final CommentService _commentService;
  final UserService _userService;
  final CommentCoordinator _commentCoordinator;
  final PostCommentStringProvider _postCommentStringProvider;
  final Mapster _mapster;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _postID;

  @readonly
  List<CommentVM> _comments = const [];

  @readonly
  bool _canLoadMore = true;

  @readonly
  bool _isLoadingMore = false;

  @computed
  bool get hasError => _error.isNotEmpty;

  // TODO: add pagination
  @action
  void loadPostComments({
    required String postID,
    bool refresh = false,
  }) {
    perform(
      () async {
        try {
          _postID = postID;

          final comments = await _commentService.loadPostComments(
            postID: PostID.fromString(postID),
          );

          final newComments = <CommentVM>[];
          for (final c in comments) {
            final author = await _userService.getUserByID(
              id: c.authorID,
              cached: !refresh,
            );

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              continue;
            }

            newComments.add(_mapster.map2(c, author, To<CommentVM>()));
          }

          _comments = newComments;
        } catch (e) {
          _error = _postCommentStringProvider.canNotLoadComments;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void refresh() {
    final postID = _postID;

    if (postID != null) {
      loadPostComments(postID: postID, refresh: true);
    }
  }

  @action
  void loadMoreComments() {
    perform(
      () async {
        try {
          final postID = _postID;
          final lastCommentID = _comments.lastOrNull?.id;

          if (postID == null) {
            return;
          }

          final comments = await _commentService.loadPostComments(
            postID: PostID.fromString(postID),
            lastCommentID: lastCommentID != null
                ? CommentID.fromString(lastCommentID)
                : null,
          );

          final newComments = <CommentVM>[];
          for (final c in comments) {
            final author = await _userService.getUserByID(
              id: c.authorID,
              cached: false,
            );

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              continue;
            }

            newComments.add(_mapster.map2(c, author, To<CommentVM>()));
          }

          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _comments = List.of(_comments)..addAll(newComments);
        } catch (e) {
          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _error = _postCommentStringProvider.canNotLoadComments;
        }
      },
      startLoading: false,
      setIsLoading: (v) => _isLoadingMore = v,
      removeError: () => _error = '',
    );
  }

  @action
  void onLikeCommentPressed({required String commentID}) {
    final comment = _comments.firstWhereOrNull((e) => e.id == commentID);
    final postID = _postID;

    if (comment == null || postID == null) {
      return;
    }

    perform(
      () async {
        if (comment.likedByMe) {
          try {
            _updateComment(id: commentID, likedByMe: false);

            final updatedComment = await _commentService.unlikeComment(
              postID: PostID.fromString(postID),
              commentID: CommentID.fromString(commentID),
            );

            final comments = List.of(_comments);
            final index =
                comments.indexWhere((e) => e.id == updatedComment.id.str);

            if (index == -1) {
              return;
            }

            final author =
                await _userService.getUserByID(id: updatedComment.authorID);

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              return;
            }

            comments[index] =
                _mapster.map2(updatedComment, author, To<CommentVM>());

            _comments = comments;
          } catch (e) {
            _error = _postCommentStringProvider.canNotUnlikeComment;
            doAfterDelay(() {
              _error = '';
            });

            _updateComment(id: commentID, likedByMe: true);
          }
        } else {
          try {
            _updateComment(id: commentID, likedByMe: true);

            final updatedComment = await _commentService.likeComment(
              postID: PostID.fromString(postID),
              commentID: CommentID.fromString(commentID),
            );

            final comments = List.of(_comments);
            final index =
                comments.indexWhere((e) => e.id == updatedComment.id.str);

            if (index == -1) {
              return;
            }

            final author =
                await _userService.getUserByID(id: updatedComment.authorID);

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              return;
            }

            comments[index] =
                _mapster.map2(updatedComment, author, To<CommentVM>());

            _comments = comments;
          } catch (e) {
            _error = _postCommentStringProvider.canNotLikeComment;
            doAfterDelay(() {
              _error = '';
            });

            _updateComment(id: commentID, likedByMe: false);
          }
        }
      },
      startLoading: false,
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void setComments(List<Comment> comments) {
    perform(
      () async {
        final newComments = <CommentVM>[];
        for (final c in comments) {
          final author = await _userService.getUserByID(
            id: c.authorID,
            cached: true,
          );

          if (author == null) {
            // TODO: maybe create deleted user or don't show their posts
            continue;
          }

          newComments.add(_mapster.map2(c, author, To<CommentVM>()));
        }

        _comments = newComments;
      },
      startLoading: false,
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onCommentPressed({required String commentID}) {
    final postID = _postID;

    if (postID != null) {
      _commentCoordinator.onCommentPressed(
        commentID: commentID,
        postID: postID,
      );
    }
  }

  void onCommentReplyButtonPressed({required String commentID}) {
    final postID = _postID;

    if (postID != null) {
      _commentCoordinator.onCommentReplyButtonPressed(
        commentID: commentID,
        postID: postID,
      );
    }
  }

  void _updateComment({
    required String id,
    required bool likedByMe,
  }) {
    final comments = List.of(_comments);
    final index = comments.indexWhere((e) => e.id == id);

    if (index == -1) {
      return;
    }

    final comment = comments[index];

    comments[index] = comment.copyWith(
      likedByMe: likedByMe,
    );

    _comments = comments;
  }
}
