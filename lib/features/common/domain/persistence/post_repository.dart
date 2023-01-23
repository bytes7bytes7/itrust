import '../entities/post/post.dart';
import '../value_objects/post_id/post_id.dart';

abstract class PostRepository {
  Future<Post?> getOrLoadPost({required PostID postID});

  Future<Post?> loadPost({required PostID postID});

  Future<List<Post>> loadPosts({
    required String category,
    required int limit,
    required bool nextPage,
  });
}
