import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/services/comment_service.dart';
import '../../coordinators/comment_coordinator.dart';
import '../../mappers/comment_mapper.dart';
import '../../view_models/comment/comment_vm.dart';

part 'post_comment_store.g.dart';

@injectable
class PostCommentStore = _PostCommentStore with _$PostCommentStore;

abstract class _PostCommentStore extends SyncStore with Store {
  _PostCommentStore({
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
  List<CommentVM> _comments = const [];

  // TODO: add pagination
  @action
  void loadPostComments({required String postID}) {
    perform(
      () async {
        _postID = postID;

        final comments =
            await _commentService.loadPostComments(postID: PostID(postID));

        // TODO: implement
        const user = User.end(
          id: UserID('user'),
          avatarUrls: [],
          email: 'email@email.com',
        );

        _comments = comments
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
  void onLikeCommentPressed({required String commentID}) {
    // TODO: implement
    final index = _comments.indexWhere((e) => e.id == commentID);

    if (index != -1) {
      final comment = _comments[index];

      _comments = List.from(_comments)
        ..[index] = comment.copyWith(
          likedByMe: !comment.likedByMe,
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
