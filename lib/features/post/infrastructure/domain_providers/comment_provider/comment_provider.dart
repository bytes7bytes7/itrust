import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../domain/dto/dto.dart';
import '../../../domain/providers/comment_provider.dart';

part 'comment_provider.g.dart';

const _route = '/post/';

@Singleton(as: CommentProvider)
@RestApi()
abstract class ProdCommentProvider implements CommentProvider {
  @factoryMethod
  factory ProdCommentProvider(Dio dio, ServerSettings settings) {
    return ProdCommentProvider._(
      dio,
      baseUrl: '${settings.baseUri}$_route',
    );
  }

  factory ProdCommentProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdCommentProvider;

  @override
  @GET('/{id}/comments')
  Future<JsonEitherWrapper<ProblemDetails, PostCommentsResponse>> getComments({
    @Path() required String id,
    @Query('lastCommentID') String? lastCommentID,
    @Query('repliedToCommentID') String? repliedToCommentID,
  });

  @override
  @POST('/{id}/comment')
  Future<JsonEitherWrapper<ProblemDetails, PostCommentResponse>> comment({
    @Body() required CommentPostRequest request,
    @Path() required String id,
    @Query('repliedToCommentID') String? repliedToCommentID,
  });
}
