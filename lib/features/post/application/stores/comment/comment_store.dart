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
  void loadComment({
    required String postID,
    required String commentID,
    bool useCached = true,
  }) {
    perform(
      () async {
        try {
          _postID = postID;
          _commentID = commentID;

          final comment = await _commentService.loadComment(
            postID: PostID.fromString(postID),
            commentID: CommentID.fromString(commentID),
            cached: useCached,
          );

          final author = await _userService.getUserByID(
            id: comment.authorID,
            cached: useCached,
          );

          if (author == null) {
            // TODO: maybe create deleted user or don't show their posts
            return;
          }

          _comment = _mapster.map2(comment, author, To<CommentVM>());

          commentReplyStore.loadCommentReplies(
            postID: postID,
            commentID: commentID,
            useCached: useCached,
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
  Future<void> refresh() async {
    final postID = _postID;
    final commentID = _commentID;

    if (postID != null && commentID != null) {
      loadComment(postID: postID, commentID: commentID, useCached: false);
    }
  }

  @action
  void onLikeCommentPressed() {
    // TODO: implement
    final comment = _comment;

    if (comment != null) {
      _comment = comment.copyWith(
        likedByMe: !comment.likedByMe,
      );
    }
  }

  @action
  void reply(String text) {
    perform(
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

          commentReplyStore.setComments(comments);
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
}
