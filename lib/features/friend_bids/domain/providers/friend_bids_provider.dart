import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../../../common/domain/dto/end_users_response/end_users_response.dart';
import '../dto/dto.dart';

abstract class FriendBidsProvider {
  Future<JsonEitherWrapper<ProblemDetails, FriendBidsAmountResponse>>
      getFriendBidsAmount();

  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getInboxBids({
    String? lastUserID,
  });

  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getOutboxBids({
    String? lastUserID,
  });
}
