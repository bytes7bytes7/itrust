import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/domain.dart';
import '../../mappers/comment_mapper.dart';
import '../../view_models/comment/comment_vm.dart';

part 'comment_store.g.dart';

@injectable
class CommentStore = _CommentStore with _$CommentStore;

abstract class _CommentStore extends SyncStore with Store {
  _CommentStore({
    required CommentService commentService,
    required CommentMapper commentMapper,
  })  : _commentService = commentService,
        _commentMapper = commentMapper;

  final CommentService _commentService;
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
  void loadComments(String postID) {
    perform(
      () async {
        _postID = _postID;

        final comments = await _commentService.loadComments(PostID(postID));

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
  void onLikeCommentPressed(String commentID) {
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
}
