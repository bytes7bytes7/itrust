import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/common.dart';
import '../entities/entities.dart';
import '../providers/comment_provider.dart';
import '../value_objects/comment_id/comment_id.dart';

@singleton
class CommentService {
  const CommentService({
    required KeepFreshTokenService keepFreshTokenService,
    required CommentProvider commentProvider,
    required CommentRepository commentRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _commentProvider = commentProvider,
        _commentRepository = commentRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final CommentProvider _commentProvider;
  final CommentRepository _commentRepository;

  Future<List<Comment>> loadPostComments({
    required PostID postID,
    CommentID? lastCommentID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _commentProvider.getComments(
          postID: postID.str,
          lastCommentID: lastCommentID?.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) async {
          for (final c in r.comments) {
            await _commentRepository.addOrUpdate(comment: c);
          }

          return r.comments;
        },
      );
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }

  Future<Comment> loadComment({
    required PostID postID,
    required CommentID commentID,
    bool cached = true,
  }) async {
    if (cached) {
      final comment = await _commentRepository.getByID(commentID);

      if (comment != null) {
        return comment;
      }
    }

    try {
      final response = await _keepFreshTokenService.request(
        () => _commentProvider.getComment(
          postID: postID.str,
          commentID: commentID.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) async {
          await _commentRepository.addOrUpdate(comment: r.comment);

          return r.comment;
        },
      );
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }

  Future<List<Comment>> loadCommentReplies({
    required PostID postID,
    required CommentID commentID,
    CommentID? lastCommentID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _commentProvider.getComments(
          postID: postID.str,
          lastCommentID: lastCommentID?.str,
          repliedToCommentID: commentID.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) async {
          for (final c in r.comments) {
            await _commentRepository.addOrUpdate(comment: c);
          }

          return r.comments;
        },
      );
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }
}
