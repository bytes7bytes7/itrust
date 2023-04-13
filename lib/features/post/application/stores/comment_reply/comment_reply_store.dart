import 'package:collection/collection.dart';
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
    required UserService userService,
    required CommentCoordinator commentCoordinator,
    required CommentReplyStringProvider commentReplyStringProvider,
    required Mapster mapster,
  })  : _commentService = commentService,
        _userService = userService,
        _commentCoordinator = commentCoordinator,
        _commentReplyStringProvider = commentReplyStringProvider,
        _mapster = mapster;

  final CommentService _commentService;
  final UserService _userService;
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
  bool _canLoadMore = true;

  @readonly
  bool _isLoadingMore = false;

  @readonly
  List<CommentVM> _replies = const [];

  @computed
  bool get hasError => _error.isNotEmpty;

  // TODO: add pagination
  @action
  void loadCommentReplies({
    required String postID,
    required String commentID,
    bool refresh = false,
  }) {
    perform(
      () async {
        try {
          _postID = postID;
          _commentID = commentID;

          final comments = await _commentService.loadCommentReplies(
            postID: PostID.fromString(postID),
            commentID: CommentID.fromString(commentID),
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

          _replies = newComments;
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
      loadCommentReplies(
        postID: postID,
        commentID: commentID,
        refresh: true,
      );
    }
  }

  @action
  void loadMoreReplies() {
    perform(
      () async {
        try {
          final postID = _postID;
          final commentID = _commentID;
          final lateReplyID = _replies.lastOrNull?.id;

          if (postID == null || commentID == null) {
            return;
          }

          final comments = await _commentService.loadCommentReplies(
            postID: PostID.fromString(postID),
            commentID: CommentID.fromString(commentID),
            lastCommentID:
                lateReplyID != null ? CommentID.fromString(lateReplyID) : null,
          );

          final newReplies = <CommentVM>[];
          for (final c in comments) {
            final author = await _userService.getUserByID(
              id: c.authorID,
            );

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              continue;
            }

            newReplies.add(_mapster.map2(c, author, To<CommentVM>()));
          }

          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _replies = List.of(_replies)..addAll(newReplies);
        } catch (e) {
          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _error = _commentReplyStringProvider.canNotLoadCommentReplies;
        }
      },
      setIsLoading: (v) => _isLoadingMore = v,
      removeError: () => _error = '',
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

        _replies = newComments;
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
