import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/post_response/post_response.dart';

@Singleton(as: JsonConverter<PostResponse, JsonMap>)
class PostResponseJsonConverter extends JsonConverter<PostResponse, JsonMap> {
  const PostResponseJsonConverter();

  @override
  PostResponse fromJson(JsonMap json) {
    return PostResponse.fromJson(json);
  }

  @override
  JsonMap toJson(PostResponse object) {
    return object.toJson();
  }
}
