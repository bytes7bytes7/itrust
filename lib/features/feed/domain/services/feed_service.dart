import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/common.dart';
import '../providers/feed_provider.dart';

@singleton
class FeedService {
  const FeedService({
    required KeepFreshTokenService keepFreshTokenService,
    required FeedProvider feedProvider,
    required PostRepository postRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _feedProvider = feedProvider,
        _postRepository = postRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final FeedProvider _feedProvider;
  final PostRepository _postRepository;

  Future<List<Post>> loadPosts({
    String? category,
    PostID? lastPostID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _feedProvider.getFeed(
          tag: category,
          lastPostID: lastPostID?.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) async {
          for (final p in r.posts) {
            await _postRepository.addOrUpdate(post: p);
          }

          return r.posts;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }
}
