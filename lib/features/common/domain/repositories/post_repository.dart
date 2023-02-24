import '../entities/post/post.dart';
import '../value_objects/post_id/post_id.dart';
import '../value_objects/user_id/user_id.dart';

abstract class PostRepository {
  Future<Post?> getOrLoadPost({required PostID postID});

  Future<Post?> loadPost({required PostID postID});

  Future<List<Post>> loadPosts({
    required String category,
    required int limit,
    required bool nextPage,
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
