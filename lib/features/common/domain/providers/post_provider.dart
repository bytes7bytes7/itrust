import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/post_response/post_response.dart';

abstract class PostProvider {
  Future<JsonEitherWrapper<ProblemDetails, PostResponse>> getPost({
    required String id,
  });

  Future<JsonEitherWrapper<ProblemDetails, PostResponse>> likePost({
    required String id,
  });

  Future<JsonEitherWrapper<ProblemDetails, PostResponse>> unlikePost({
    required String id,
  });
}