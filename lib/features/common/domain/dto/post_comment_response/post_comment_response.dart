import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/comment/comment.dart';

part 'post_comment_response.g.dart';

@JsonSerializable()
class PostCommentResponse {
  const PostCommentResponse({
    required this.comment,
  });

  final Comment comment;

  factory PostCommentResponse.fromJson(JsonMap json) =>
      _$PostCommentResponseFromJson(json);

  JsonMap toJson() => _$PostCommentResponseToJson(this);
}
