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
  @GET('/{postID}/comments')
  Future<JsonEitherWrapper<ProblemDetails, PostCommentsResponse>> getComments({
    @Path() required String postID,
    @Query('lastCommentID') String? lastCommentID,
    @Query('repliedToCommentID') String? repliedToCommentID,
  });

  @override
  @GET('/{postID}/comment/{commentID}')
  Future<JsonEitherWrapper<ProblemDetails, PostCommentResponse>> getComment({
    @Path() required String postID,
    @Path() required String commentID,
  });

  @override
  @POST('/{postID}/comment')
  Future<JsonEitherWrapper<ProblemDetails, PostCommentResponse>> comment({
    @Body() required CommentPostRequest request,
    @Path() required String postID,
    @Query('repliedToCommentID') String? repliedToCommentID,
  });
}
