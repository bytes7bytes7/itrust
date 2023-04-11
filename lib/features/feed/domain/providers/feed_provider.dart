import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/get_feed_response/get_feed_response.dart';

abstract class FeedProvider {
  Future<JsonEitherWrapper<ProblemDetails, GetFeedResponse>> getFeed({
    String? category,
    String? lastPostID,
  });
}
