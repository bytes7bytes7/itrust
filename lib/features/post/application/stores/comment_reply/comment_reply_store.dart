import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/domain.dart';
import '../../coordinators/comment_coordinator.dart';
import '../../providers/comment_reply_string_provider.dart';
import '../../view_models/comment/comment_vm.dart';

part 'comment_reply_store.g.dart';

@injectable
class CommentReplyStore = _CommentReplyStore with _$CommentReplyStore;

abstract class _CommentReplyStore extends SyncStore with Store {
  _CommentReplyStore({
    required CommentService commentService,
    required CommentCoordinator commentCoordinator,
    required CommentReplyStringProvider commentReplyStringProvider,
    required Mapster mapster,
  })  : _commentService = commentService,
        _commentCoordinator = commentCoordinator,
        _commentReplyStringProvider = commentReplyStringProvider,
        _mapster = mapster;

  final CommentService _commentService;
  final CommentCoordinator _commentCoordinator;
  final CommentReplyStringProvider _commentReplyStringProvider;
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
  List<CommentVM> _replies = const [];

  @computed
  bool get hasError => _error.isNotEmpty;

  // TODO: add pagination
  @action
  void loadCommentReplies({required String postID, required String commentID}) {
    perform(
      () async {
        try {
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
            firstName: 'first',
            lastName: 'last',
          );

          _replies = comments
              .map(
                (comment) => _mapster.map2(
                  comment,
                  user,
                  To<CommentVM>(),
                ),
              )
              .toList();
        } catch (e) {
          _error = _commentReplyStringProvider.canNotLoadCommentReplies;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void retry() {
    final postID = _postID;
    final commentID = _commentID;

    if (postID != null && commentID != null) {
      loadCommentReplies(postID: postID, commentID: commentID);
    }
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
        postID: postID,
        commentID: commentID,
      );
    }
  }

  void onCommentReplyButtonPressed({required String commentID}) {
    final postID = _postID;

    if (postID != null) {
      _commentCoordinator.onCommentReplyButtonPressed(
        postID: postID,
        commentID: commentID,
      );
    }
  }
}
