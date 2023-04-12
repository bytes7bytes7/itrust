import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../providers/post_provider.dart';

@singleton
class PostService {
  const PostService({
    required KeepFreshTokenService keepFreshTokenService,
    required PostProvider postProvider,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _postProvider = postProvider;

  final KeepFreshTokenService _keepFreshTokenService;
  final PostProvider _postProvider;

  Future<Post> loadPost(PostID postID) async {
    final response = await _keepFreshTokenService.request(
      () => _postProvider.getPost(
        id: postID.str,
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
