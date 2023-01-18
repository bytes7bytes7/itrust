import '../../../common/common.dart';
import '../entities/entities.dart';

abstract class CommentService {
  Future<List<Comment>> loadComments(PostID postID);
}
