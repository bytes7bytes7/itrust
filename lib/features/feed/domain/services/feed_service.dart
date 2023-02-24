import '../../../common/common.dart';

abstract class FeedService {
  Future<List<Post>> loadPosts({
    required String category,
    required int limit,
    bool nextPage,
  });

  Future<void> likePost({required PostID postID});
}
