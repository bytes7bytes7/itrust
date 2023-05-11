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
  void refresh() {
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

          if (newReplies.isNotEmpty) {
            doAfterDelay(() {
              _canLoadMore = true;
            });
          }

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
  void onLikeReplyPressed({required String replyID}) {
    final reply = _replies.firstWhereOrNull((e) => e.id == replyID);
    final postID = _postID;

    if (reply == null || postID == null) {
      return;
    }

    perform(
      () async {
        if (reply.likedByMe) {
          try {
            _updateReply(id: replyID, likedByMe: false);

            final updatedReply = await _commentService.unlikeComment(
              postID: PostID.fromString(postID),
              commentID: CommentID.fromString(replyID),
            );

            final replies = List.of(_replies);
            final index =
                replies.indexWhere((e) => e.id == updatedReply.id.str);

            if (index == -1) {
              return;
            }

            final author =
                await _userService.getUserByID(id: updatedReply.authorID);

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              return;
            }

            replies[index] =
                _mapster.map2(updatedReply, author, To<CommentVM>());

            _replies = replies;
          } catch (e) {
            _error = _commentReplyStringProvider.canNotUnlikeReply;
            doAfterDelay(() {
              _error = '';
            });

            _updateReply(id: replyID, likedByMe: true);
          }
        } else {
          try {
            _updateReply(id: replyID, likedByMe: true);

            final updatedReply = await _commentService.likeComment(
              postID: PostID.fromString(postID),
              commentID: CommentID.fromString(replyID),
            );

            final replies = List.of(_replies);
            final index =
                replies.indexWhere((e) => e.id == updatedReply.id.str);

            if (index == -1) {
              return;
            }

            final author =
                await _userService.getUserByID(id: updatedReply.authorID);

            if (author == null) {
              // TODO: maybe create deleted user or don't show their posts
              return;
            }

            replies[index] =
                _mapster.map2(updatedReply, author, To<CommentVM>());

            _replies = replies;
          } catch (e) {
            _error = _commentReplyStringProvider.canNotLikeReply;
            doAfterDelay(() {
              _error = '';
            });

            _updateReply(id: replyID, likedByMe: false);
          }
        }
      },
      startLoading: false,
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
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

  void onAuthorPressed({required String userID}) {
    _commentCoordinator.onAuthorPressed(userID: userID);
  }

  void _updateReply({
    required String id,
    required bool likedByMe,
  }) {
    final replies = List.of(_replies);
    final index = replies.indexWhere((e) => e.id == id);

    if (index == -1) {
      return;
    }

    final reply = replies[index];

    replies[index] = reply.copyWith(
      likedByMe: likedByMe,
    );

    _replies = replies;
  }
}
