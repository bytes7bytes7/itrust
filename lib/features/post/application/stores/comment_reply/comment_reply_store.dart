import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/services/comment_service.dart';
import '../../../domain/value_objects/comment_id/comment_id.dart';
import '../../coordinators/comment_coordinator.dart';
import '../../mappers/comment_mapper.dart';
import '../../view_models/comment/comment_vm.dart';

part 'comment_reply_store.g.dart';

@injectable
class CommentReplyStore = _CommentReplyStore with _$CommentReplyStore;

abstract class _CommentReplyStore extends SyncStore with Store {
  _CommentReplyStore({
    required CommentService commentService,
    required CommentCoordinator commentCoordinator,
    required CommentMapper commentMapper,
  })  : _commentService = commentService,
        _commentCoordinator = commentCoordinator,
        _commentMapper = commentMapper;

  final CommentService _commentService;
  final CommentCoordinator _commentCoordinator;
  final CommentMapper _commentMapper;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _postID;

  @readonly
  String? _commentID;

  @readonly
  List<CommentVM> _replies = const [];

  // TODO: add pagination
  @action
  void loadCommentReplies({required String postID, required String commentID}) {
    perform(
      () async {
        _postID = postID;
        _commentID = commentID;

        final comments = await _commentService.loadCommentReplies(
          commentID: CommentID(commentID),
        );

        // TODO: implement
        const user = User.end(
          id: UserID('user'),
          avatarUrls: [],
          email: 'email@email.com',
        );

        _replies = comments
            .map(
              (comment) => _commentMapper.map(
                comment,
                user,
              ),
            )
            .toList();
      },
      setIsLoading: (v) => _isLoading = v,
      setError: (v) => _error = v,
    );
  }

  @action
  void onLikeReplyPressed({required String commentID}) {
    // TODO: implement
    final index = _replies.indexWhere((e) => e.id == commentID);

    if (index != -1) {
      final reply = _replies[index];

      _replies = List.from(_replies)
        ..[index] = reply.copyWith(
          likedByMe: !reply.likedByMe,
        );
    }
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
}
