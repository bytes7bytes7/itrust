import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/feed_provider.dart';

part 'feed_provider.g.dart';

const _route = '/feed/';

@Singleton(as: FeedProvider)
@RestApi()
abstract class ProdFeedProvider implements FeedProvider {
  @factoryMethod
  factory ProdFeedProvider(Dio dio, ServerSettings settings) {
    return ProdFeedProvider._(
      dio,
      baseUrl: '${settings.baseUri}$_route',
    );
  }

  factory ProdFeedProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdFeedProvider;

  @override
  @GET('/')
  Future<JsonEitherWrapper<ProblemDetails, GetFeedResponse>> getFeed({
    @Query('category') String? category,
    @Query('lastPostID') String? lastPostID,
  });

  @override
  @GET('/tags')
  Future<JsonEitherWrapper<ProblemDetails, GetTagsResponse>> getTags();
}
