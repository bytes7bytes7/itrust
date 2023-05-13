import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../../common/domain/providers/user_info_provider.dart';
import '../../../domain/dto/dto.dart';

part 'user_info_provider.g.dart';

const _route = '/users/';

@Singleton(as: UserInfoProvider)
@RestApi()
abstract class ProdUserInfoProvider implements UserInfoProvider {
  @factoryMethod
  factory ProdUserInfoProvider(Dio dio, ServerSettings settings) {
    return ProdUserInfoProvider._(
      dio,
      baseUrl: '${settings.httpBaseUri}$_route',
    );
  }

  factory ProdUserInfoProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdUserInfoProvider;

  @override
  @GET('/info')
  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> getInfo({
    @Query('userID') required String userID,
  });

  @override
  @POST('/friend_bid')
  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> sendFriendBid({
    @Body() required UserActionRequest request,
  });

  @override
  @POST('/cancel_friend_bid')
  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> cancelFriendBid({
    @Body() required UserActionRequest request,
  });

  @override
  @POST('/remove_friend')
  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> removeFriend({
    @Body() required UserActionRequest request,
  });

  @override
  @POST('/remove_subscriber')
  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> removeSubscriber({
    @Body() required UserActionRequest request,
  });

  @override
  @POST('/respond_friend_bid')
  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>>
      responseFriendBid({
    @Body() required RespondFriendBidRequest request,
  });

  @override
  @POST('/unsubscribe')
  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> unsubscribe({
    @Body() required UserActionRequest request,
  });
}
