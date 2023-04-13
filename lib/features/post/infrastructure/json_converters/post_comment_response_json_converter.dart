import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/post_comment_response/post_comment_response.dart';

@Singleton(as: JsonConverter<PostCommentResponse, JsonMap>)
class PostCommentResponseJsonConverter
    extends JsonConverter<PostCommentResponse, JsonMap> {
  const PostCommentResponseJsonConverter();

  @override
  PostCommentResponse fromJson(JsonMap json) {
    return PostCommentResponse.fromJson(json);
  }

  @override
  JsonMap toJson(PostCommentResponse object) {
    return object.toJson();
  }
}
