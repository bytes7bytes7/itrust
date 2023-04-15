import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/posts_response/posts_response.dart';

@Singleton(as: JsonConverter<PostsResponse, JsonMap>)
class PostsResponseJsonConverter extends JsonConverter<PostsResponse, JsonMap> {
  const PostsResponseJsonConverter();

  @override
  PostsResponse fromJson(JsonMap json) {
    return PostsResponse.fromJson(json);
  }

  @override
  JsonMap toJson(PostsResponse object) {
    return object.toJson();
  }
}
