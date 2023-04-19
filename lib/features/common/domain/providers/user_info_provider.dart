import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/dto.dart';

abstract class UserInfoProvider {
  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> getInfo({
    required String userID,
  });

  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> sendFriendBid({
    required UserActionRequest request,
  });

  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> cancelFriendBid({
    required UserActionRequest request,
  });

  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> removeFriend({
    required UserActionRequest request,
  });

  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> removeSubscriber({
    required UserActionRequest request,
  });

  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>>
      responseFriendBid({
    required RespondFriendBidRequest request,
  });

  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> unsubscribe({
    required UserActionRequest request,
  });
}
