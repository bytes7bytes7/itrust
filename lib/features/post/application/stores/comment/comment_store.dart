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
    required CommentCoordinator commentCoordinator,
    required CommentStringProvider commentStringProvider,
    required Mapster mapster,
  })  : _commentService = commentService,
        _commentCoordinator = commentCoordinator,
        _commentStringProvider = commentStringProvider,
        _mapster = mapster;

  final CommentReplyStore commentReplyStore;
  final CommentService _commentService;
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

          // TODO: implement
          final user = User.end(
            id: UserID.fromString('user'),
            avatarUrls: [],
            email: 'email@email.com',
            firstName: 'first',
            lastName: 'last',
          );

          _comment = _mapster.map2(comment, user, To<CommentVM>());

          commentReplyStore.loadCommentReplies(
            postID: postID,
            commentID: commentID,
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

  void onBackButtonPressed() {
    _commentCoordinator.onBackButtonPressed();
  }
}
