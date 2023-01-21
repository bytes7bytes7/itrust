import 'package:injectable/injectable.dart';
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
    required CommentCoordinator commentCoordinator,
    required PostCommentStringProvider postCommentStringProvider,
    required TwoEntitiesToViewModelMapper<Comment, User, CommentVM>
        commentMapper,
  })  : _commentService = commentService,
        _commentCoordinator = commentCoordinator,
        _postCommentStringProvider = postCommentStringProvider,
        _commentMapper = commentMapper;

  final CommentService _commentService;
  final CommentCoordinator _commentCoordinator;
  final PostCommentStringProvider _postCommentStringProvider;
  final TwoEntitiesToViewModelMapper<Comment, User, CommentVM> _commentMapper;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _postID;

  @readonly
  List<CommentVM> _comments = const [];

  @computed
  bool get hasError => _error.isNotEmpty;

  // TODO: add pagination
  @action
  void loadPostComments({required String postID}) {
    perform(
      () async {
        try {
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
        } catch (e) {
          _error = _postCommentStringProvider.canNotLoadComments;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void retry() {
    final postID = _postID;

    if (postID != null) {
      loadPostComments(postID: postID);
    }
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
