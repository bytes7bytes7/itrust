import 'package:injectable/injectable.dart';

import '../entities/post/post.dart';
import '../providers/post_provider.dart';
import '../value_objects/post_id/post_id.dart';
import 'keep_fresh_token_service.dart';

@singleton
class PostService {
  const PostService({
    required KeepFreshTokenService keepFreshTokenService,
    required PostProvider postProvider,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _postProvider = postProvider;

  final KeepFreshTokenService _keepFreshTokenService;
  final PostProvider _postProvider;

  Future<Post> loadPost(PostID id) async {
    final response = await _keepFreshTokenService.request(
      () => _postProvider.getPost(
        id: id.str,
      ),
    );

    return response.value.fold(
      (l) {
        // TODO: implement
        throw Exception();
      },
      (r) {
        return r.post;
      },
    );
  }

  Future<Post> likePost(PostID id) async {
    final response = await _keepFreshTokenService.request(
      () => _postProvider.likePost(
        id: id.str,
      ),
    );

    return response.value.fold(
      (l) {
        // TODO: implement
        throw Exception();
      },
      (r) {
        return r.post;
      },
    );
  }

  Future<Post> unlikePost(PostID id) async {
    final response = await _keepFreshTokenService.request(
          () => _postProvider.unlikePost(
        id: id.str,
      ),
    );

    return response.value.fold(
          (l) {
        // TODO: implement
        throw Exception();
      },
          (r) {
        return r.post;
      },
    );
  }
}
