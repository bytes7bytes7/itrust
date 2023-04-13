import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/post_comments_response/post_comments_response.dart';

@Singleton(as: JsonConverter<PostCommentsResponse, JsonMap>)
class PostCommentsResponseJsonConverter
    extends JsonConverter<PostCommentsResponse, JsonMap> {
  const PostCommentsResponseJsonConverter();

  @override
  PostCommentsResponse fromJson(JsonMap json) {
    return PostCommentsResponse.fromJson(json);
  }

  @override
  JsonMap toJson(PostCommentsResponse object) {
    return object.toJson();
  }
}
