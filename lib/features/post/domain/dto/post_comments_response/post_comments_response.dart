import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/comment/comment.dart';

part 'post_comments_response.g.dart';

@JsonSerializable()
class PostCommentsResponse {
  const PostCommentsResponse({
    required this.comments,
  });

  final List<Comment> comments;

  factory PostCommentsResponse.fromJson(JsonMap json) =>
      _$PostCommentsResponseFromJson(json);

  JsonMap toJson() => _$PostCommentsResponseToJson(this);
}
