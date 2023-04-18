import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../../common/domain/dto/dto.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/people_provider.dart';

part 'people_provider.g.dart';

const _route = '/users/';

@Singleton(as: PeopleProvider)
@RestApi()
abstract class ProdPeopleProvider implements PeopleProvider {
  @factoryMethod
  factory ProdPeopleProvider(Dio dio, ServerSettings settings) {
    return ProdPeopleProvider._(
      dio,
      baseUrl: '${settings.baseUri}$_route',
    );
  }

  factory ProdPeopleProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdPeopleProvider;

  @override
  @GET('/people_amount')
  Future<JsonEitherWrapper<ProblemDetails, PeopleAmountResponse>>
      getPeopleAmount();

  @override
  @GET('/all')
  Future<JsonEitherWrapper<ProblemDetails, UsersResponse>> getAllUsers({
    @Query('lastUserID') String? lastUserID,
  });

  @override
  @GET('/friends')
  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getFriends({
    @Query('userID') required String userID,
    @Query('lastUserID') String? lastUserID,
  });

  @override
  @GET('/subscribers')
  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getSubscribers({
    @Query('userID') required String userID,
    @Query('lastUserID') String? lastUserID,
  });

  @override
  @GET('/subscriptions')
  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getSubscriptions({
    @Query('userID') required String userID,
    @Query('lastUserID') String? lastUserID,
  });
}
