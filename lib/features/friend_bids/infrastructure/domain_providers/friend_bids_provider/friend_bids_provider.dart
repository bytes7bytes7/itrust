import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../../common/domain/dto/end_users_response/end_users_response.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/friend_bids_provider.dart';

part 'friend_bids_provider.g.dart';

const _route = '/users/';

@Singleton(as: FriendBidsProvider)
@RestApi()
abstract class ProdFriendBidsProvider implements FriendBidsProvider {
  @factoryMethod
  factory ProdFriendBidsProvider(Dio dio, ServerSettings settings) {
    return ProdFriendBidsProvider._(
      dio,
      baseUrl: '${settings.httpBaseUri}$_route',
    );
  }

  factory ProdFriendBidsProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdFriendBidsProvider;

  @override
  @GET('/friend_bids_amount')
  Future<JsonEitherWrapper<ProblemDetails, FriendBidsAmountResponse>>
      getFriendBidsAmount();

  @override
  @GET('/inbox_friend_bids')
  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getInboxBids({
    @Query('lastUserID') String? lastUserID,
  });

  @override
  @GET('/outbox_friend_bids')
  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getOutboxBids({
    @Query('lastUserID') String? lastUserID,
  });
}
