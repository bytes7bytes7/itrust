import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../../common/domain/dto/end_users_response/end_users_response.dart';
import '../../../domain/providers/friends_provider.dart';

part 'friends_provider.g.dart';

const _route = '/users/';

@Singleton(as: FriendsProvider)
@RestApi()
abstract class ProdFriendsProvider implements FriendsProvider {
  @factoryMethod
  factory ProdFriendsProvider(Dio dio, ServerSettings settings) {
    return ProdFriendsProvider._(
      dio,
      baseUrl: '${settings.baseUri}$_route',
    );
  }

  factory ProdFriendsProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdFriendsProvider;

  @override
  @GET('/friends')
  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getFriends({
    @Query('friendsTo') required String friendsTo,
    @Query('lastUserID') String? lastUserID,
  });
}
