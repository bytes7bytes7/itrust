import '../../../common/common.dart';
import '../entities/entities.dart';
import '../value_objects/comment_id/comment_id.dart';

abstract class CommentService {
  Future<List<Comment>> loadPostComments({required PostID postID});

  Future<Comment> loadComment({required CommentID commentID});

  Future<List<Comment>> loadCommentReplies({required CommentID commentID});
}
