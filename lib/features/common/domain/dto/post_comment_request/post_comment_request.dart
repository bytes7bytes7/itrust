import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'post_comment_request.g.dart';

@JsonSerializable()
class PostCommentRequest {
  const PostCommentRequest({
    required this.text,
    this.repliedToCommentID,
  });

  final String text;
  final String? repliedToCommentID;

  factory PostCommentRequest.fromJson(JsonMap json) =>
      _$PostCommentRequestFromJson(json);

  JsonMap toJson() => _$PostCommentRequestToJson(this);
}
