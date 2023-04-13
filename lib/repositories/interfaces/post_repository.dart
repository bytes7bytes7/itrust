import '../../features/common/domain/entities/post/post.dart';
import '../../features/common/domain/value_objects/post_id/post_id.dart';

abstract class PostRepository {
  Future<Post?> getByID(PostID id);

  Future<void> addOrUpdate({required Post post});
}
