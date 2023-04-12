import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/dto.dart';

abstract class FeedProvider {
  Future<JsonEitherWrapper<ProblemDetails, GetFeedResponse>> getFeed({
    String? category,
    String? lastPostID,
  });

  Future<JsonEitherWrapper<ProblemDetails, GetTagsResponse>> getTags();
}
