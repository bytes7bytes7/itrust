import '../../features/common/domain/entities/post/post.dart';
import '../../features/common/domain/value_objects/post_id/post_id.dart';
import '../../features/common/domain/value_objects/user_id/user_id.dart';

abstract class PostRepository {
  Future<Post?> loadPost({required PostID postID});

  Future<List<Post>> loadPosts({
    String? category,
    PostID? lastPostID,
  });

  Future<void> likePost({
    required PostID postID,
    required UserID userID,
  });

  Future<void> unlikePost({
    required PostID postID,
    required UserID userID,
  });
}
