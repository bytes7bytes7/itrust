import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/post_repository.dart';

@Singleton(as: PostRepository)
class ProdPostRepository implements PostRepository {
  @override
  Future<Post?> getOrLoadPost({required PostID postID}) async {
    // TODO: implement
    return null;
  }

  @override
  Future<Post?> loadPost({required PostID postID}) async {
    // TODO: implement
    return null;
  }

  @override
  Future<List<Post>> loadPosts({
    required String category,
    required int limit,
    required bool nextPage,
  }) async {
    // TODO: implement
    return [];
  }

  @override
  Future<void> likePost({
    required PostID postID,
    required UserID userID,
  }) async {
    // TODO: implement
  }

  @override
  Future<void> unlikePost({
    required PostID postID,
    required UserID userID,
  }) async {
    // TODO: implement
  }
}
