import '../../../common/common.dart';

abstract class FeedService {
  Future<List<Post>> loadPosts(String category);
}
