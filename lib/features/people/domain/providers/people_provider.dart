import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../../../common/domain/dto/dto.dart';
import '../dto/dto.dart';

abstract class PeopleProvider {
  Future<JsonEitherWrapper<ProblemDetails, PeopleAmountResponse>>
      getPeopleAmount();

  Future<JsonEitherWrapper<ProblemDetails, UsersResponse>> getAllUsers({
    String? lastUserID,
  });

  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getFriends({
    required String userID,
    String? lastUserID,
  });

  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getSubscribers({
    required String userID,
    String? lastUserID,
  });

  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getSubscriptions({
    required String userID,
    String? lastUserID,
  });
}
