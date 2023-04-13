import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/dto.dart';

abstract class CommentProvider {
  Future<JsonEitherWrapper<ProblemDetails, PostCommentsResponse>> getComments({
    required String id,
    String? lastCommentID,
    String? repliedToCommentID,
  });

  Future<JsonEitherWrapper<ProblemDetails, PostCommentResponse>> comment({
    required CommentPostRequest request,
    required String id,
    String? repliedToCommentID,
  });
}
