import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/domain.dart';
import '../../coordinators/comment_coordinator.dart';
import '../../providers/comment_string_provider.dart';
import '../../view_models/comment/comment_vm.dart';
import '../comment_reply/comment_reply_store.dart';

part 'comment_store.g.dart';

@injectable
class CommentStore = _CommentStore with _$CommentStore;

abstract class _CommentStore extends SyncStore with Store {
  _CommentStore({
    required this.commentReplyStore,
    required CommentService commentService,
    required UserService userService,
    required CommentCoordinator commentCoordinator,
    required CommentStringProvider commentStringProvider,
    required Mapster mapster,
  })  : _commentService = commentService,
        _userService = userService,
        _commentCoordinator = commentCoordinator,
        _commentStringProvider = commentStringProvider,
        _mapster = mapster;

  final CommentReplyStore commentReplyStore;
  final CommentService _commentService;
  final UserService _userService;
  final CommentCoordinator _commentCoordinator;
  final CommentStringProvider _commentStringProvider;
  final Mapster _mapster;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _postID;

  @readonly
  String? _commentID;

  @readonly
  CommentVM? _comment;

  @readonly
  bool _moveUp = false;

  @computed
  bool get hasError => _error.isNotEmpty;

  @computed
  bool get isAllLoaded =>
      !_isLoading &&
      !hasError &&
      !commentReplyStore.isLoading &&
      !commentReplyStore.hasError;

  @action
  Future<void> loadComment({
    required String postID,
    required String commentID,
    bool refresh = false,
  }) async {
    await perform(
      () async {
        try {
          _postID = postID;
          _commentID = commentID;

          final comment = await _commentService.loadComment(
            postID: PostID.fromString(postID),
            commentID: CommentID.fromString(commentID),
            cached: !refresh,
          );

          final author = await _userService.getUserByID(
            id: comment.authorID,
            cached: !refresh,
          );

          if (author == null) {
            // TODO: maybe create deleted user or don't show their posts
            return;
          }

          _comment = _mapster.map2(comment, author, To<CommentVM>());

          await commentReplyStore.loadCommentReplies(
            postID: postID,
            commentID: commentID,
            refresh: refresh,
          );
        } catch (e) {
          _error = _commentStringProvider.canNotLoadComment;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void refresh() {
    final postID = _postID;
    final commentID = _commentID;

    if (postID != null && commentID != null) {
      loadComment(postID: postID, commentID: commentID, refresh: true);
    }
  }

  @action
  Future<void> onLikeCommentPressed() async {
    final comment = _comment;
    final postID = _postID;

    if (comment == null || postID == null) {
      return;
    }

    await perform(
      () async {
        if (comment.likedByMe) {
          try {
            _updateComment(likedByMe: false);

            final updatedComment = await _commentService.unlikeComment(
              postID: PostID.fromString(postID),
              commentID: CommentID.fromString(comment.id),
            );

            final author =
                await _userService.getUserByID(id: updatedComment.authorID);

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              return;
            }

            _comment = _mapster.map2(updatedComment, author, To<CommentVM>());
          } catch (e) {
            _error = _commentStringProvider.canNotUnlikeComment;
            doAfterDelay(() {
              _error = '';
            });

            _updateComment(likedByMe: true);
          }
        } else {
          try {
            _updateComment(likedByMe: true);

            final updatedComment = await _commentService.likeComment(
              postID: PostID.fromString(postID),
              commentID: CommentID.fromString(comment.id),
            );

            final author =
                await _userService.getUserByID(id: updatedComment.authorID);

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              return;
            }

            _comment = _mapster.map2(updatedComment, author, To<CommentVM>());
          } catch (e) {
            _error = _commentStringProvider.canNotLikeComment;
            doAfterDelay(() {
              _error = '';
            });

            _updateComment(likedByMe: false);
          }
        }
      },
      startLoading: false,
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  Future<void> reply(String text) async {
    await perform(
      () async {
        try {
          final postID = _postID;
          final commentID = _commentID;
          if (postID == null || commentID == null) {
            return;
          }

          final comments = await _commentService.replyToComment(
            text: text,
            postID: PostID.fromString(postID),
            commentID: CommentID.fromString(commentID),
          );

          _moveUp = true;
          doAfterDelay(() {
            _moveUp = false;
          });

          await commentReplyStore.setComments(comments);
        } catch (e) {
          _error = _commentStringProvider.canNotReplyToPost;
        }
      },
      startLoading: false,
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _commentCoordinator.onBackButtonPressed();
  }

  void onAuthorPressed() {
    final comment = _comment;

    if (comment == null) {
      return;
    }

    _commentCoordinator.onAuthorPressed(userID: comment.authorID);
  }

  void _updateComment({
    required bool likedByMe,
  }) {
    final comment = _comment;

    if (comment == null) {
      return;
    }

    _comment = comment.copyWith(
      likedByMe: likedByMe,
    );
  }
}
