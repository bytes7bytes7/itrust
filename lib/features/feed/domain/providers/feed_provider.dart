import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../../../common/domain/dto/posts_response/posts_response.dart';
import '../dto/dto.dart';

abstract class FeedProvider {
  Future<JsonEitherWrapper<ProblemDetails, PostsResponse>> getFeed({
    String? tag,
    String? lastPostID,
  });

  Future<JsonEitherWrapper<ProblemDetails, GetTagsResponse>> getTags();
}
