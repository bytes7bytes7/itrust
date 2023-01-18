import '../../../common/common.dart';

abstract class PostService {
  Future<Post> loadPost(PostID postID);
}
