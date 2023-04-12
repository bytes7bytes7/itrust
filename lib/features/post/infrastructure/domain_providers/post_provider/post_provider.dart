import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../domain/dto/post_response/post_response.dart';
import '../../../domain/providers/post_provider.dart';

part 'post_provider.g.dart';

const _route = '/post/';

@Singleton(as: PostProvider)
@RestApi()
abstract class ProdPostProvider implements PostProvider {
  @factoryMethod
  factory ProdPostProvider(Dio dio, ServerSettings settings) {
    return ProdPostProvider._(
      dio,
      baseUrl: '${settings.baseUri}$_route',
    );
  }

  factory ProdPostProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdPostProvider;

  @override
  @GET('/{id}')
  Future<JsonEitherWrapper<ProblemDetails, PostResponse>> getPost({
    @Path() required String id,
  });
}
