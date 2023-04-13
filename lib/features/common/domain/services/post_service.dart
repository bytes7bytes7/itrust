import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../dto/dto.dart';
import '../entities/entities.dart';
import '../providers/post_provider.dart';
import '../value_objects/value_objects.dart';
import 'keep_fresh_token_service.dart';

@singleton
class PostService {
  const PostService({
    required KeepFreshTokenService keepFreshTokenService,
    required PostProvider postProvider,
    required PostRepository postRepository,
    required CommentRepository commentRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _postProvider = postProvider,
        _postRepository = postRepository,
        _commentRepository = commentRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final PostProvider _postProvider;
  final PostRepository _postRepository;
  final CommentRepository _commentRepository;

  Future<Post> loadPost(PostID id, {bool cached = true}) async {
    if (cached) {
      final post = await _postRepository.getByID(id);

      if (post != null) {
        return post;
      }
    }

    try {
      final response = await _keepFreshTokenService.request(
        () => _postProvider.getPost(
          id: id.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) async {
          await _postRepository.addOrUpdate(post: r.post);

          return r.post;
        },
      );
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }

  Future<Post> likePost(PostID id) async {
    try {
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
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }

  Future<Post> unlikePost(PostID id) async {
    try {
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
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }

  Future<List<Comment>> replyToPost({
    required String text,
    required PostID postID,
  }) async {
    try {
      final request = PostCommentRequest(
        text: text,
      );

      final response = await _keepFreshTokenService.request(
        () => _postProvider.comment(
          request: request,
          postID: postID.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) async {
          for (final c in r.comments) {
            await _commentRepository.addOrUpdate(comment: c);
          }

          return r.comments;
        },
      );
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }

}
