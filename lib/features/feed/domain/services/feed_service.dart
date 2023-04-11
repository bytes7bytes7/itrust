import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../providers/feed_provider.dart';

@singleton
class FeedService {
  const FeedService({
    required KeepFreshTokenService keepFreshTokenService,
    required FeedProvider feedProvider,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _feedProvider = feedProvider;

  final KeepFreshTokenService _keepFreshTokenService;
  final FeedProvider _feedProvider;

  Future<List<Post>> loadPosts({
    String? category,
    PostID? lastPostID,
  }) async {
    final response = await _keepFreshTokenService.request(
      () => _feedProvider.getFeed(
        category: category,
        lastPostID: lastPostID?.str,
      ),
    );

    return response.value.fold(
      (l) {
        // TODO: implement
        throw Exception();
      },
      (r) {
        return r.posts;
      },
    );
  }

  Future<void> likePost({required PostID postID}) async {
    // TODO: implement
  }
}
