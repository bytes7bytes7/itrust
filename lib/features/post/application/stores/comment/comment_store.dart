import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/domain.dart';
import '../../coordinators/comment_coordinator.dart';
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
    required TwoEntitiesToViewModelMapper<Comment, User, CommentVM>
        commentMapper,
  })  : _commentService = commentService,
        _commentCoordinator = commentCoordinator,
        _commentMapper = commentMapper;

  final CommentReplyStore commentReplyStore;

  final CommentService _commentService;
  final CommentCoordinator _commentCoordinator;
  final TwoEntitiesToViewModelMapper<Comment, User, CommentVM> _commentMapper;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _commentID;

  @readonly
  CommentVM? _comment;

  @action
  void loadComment({required String commentID}) {
    perform(
      () async {
        _commentID = commentID;

        final comment =
            await _commentService.loadComment(commentID: CommentID(commentID));

        // TODO: implement
        const user = User.end(
          id: UserID('user'),
          avatarUrls: [],
          email: 'email@email.com',
        );

        _comment = _commentMapper.map(comment, user);
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
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
