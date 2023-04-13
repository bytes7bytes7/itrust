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

          String? lastCommentID;
          if (!refresh) {
            lastCommentID = _comments.lastOrNull?.id;
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
}
