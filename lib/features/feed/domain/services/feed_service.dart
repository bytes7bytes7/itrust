import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/common.dart';

class FeedService {
  const FeedService({
    required PostRepository postRepository,
    required EndUserRepository endUserRepository,
  })  : _postRepository = postRepository,
        _endUserRepository = endUserRepository;

  final PostRepository _postRepository;
  final EndUserRepository _endUserRepository;

  Future<List<Post>> loadPosts({
    required String category,
    required int limit,
    bool nextPage = true,
  }) {
    return _postRepository.loadPosts(
      category: category,
      limit: limit,
      nextPage: nextPage,
    );
  }

  Future<void> likePost({required PostID postID}) {
    return _postRepository.likePost(
      postID: postID,
      userID: _endUserRepository.me!.id,
    );
  }
}
