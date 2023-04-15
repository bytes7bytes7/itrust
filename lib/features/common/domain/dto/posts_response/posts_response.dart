import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';

part 'posts_response.g.dart';

@JsonSerializable()
class PostsResponse {
  const PostsResponse({
    required this.posts,
  });

  final List<Post> posts;

  factory PostsResponse.fromJson(JsonMap json) => _$PostsResponseFromJson(json);

  JsonMap toJson() => _$PostsResponseToJson(this);
}
