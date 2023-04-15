import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/dto.dart';

abstract class PostProvider {
  Future<JsonEitherWrapper<ProblemDetails, PostResponse>> getPost({
    required String id,
  });

  Future<JsonEitherWrapper<ProblemDetails, PostsResponse>> getUserPosts({
    required String byUserID,
    String? lastPostID,
  });

  Future<JsonEitherWrapper<ProblemDetails, PostResponse>> likePost({
    required String id,
  });

  Future<JsonEitherWrapper<ProblemDetails, PostResponse>> unlikePost({
    required String id,
  });

  Future<JsonEitherWrapper<ProblemDetails, PostCommentsResponse>> comment({
    required PostCommentRequest request,
    required String postID,
  });
}
