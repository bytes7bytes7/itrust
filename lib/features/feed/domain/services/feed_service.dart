import '../../../common/common.dart';

abstract class FeedService {
  Future<List<Post>> loadPosts({required String category});

  Future<void> likePost({required String postID});
}
