import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../../../common/domain/dto/end_users_response/end_users_response.dart';

abstract class FriendsProvider {
  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getFriends({
    required String friendsTo,
    String? lastUserID,
  });
}
