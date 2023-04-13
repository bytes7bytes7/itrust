import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'comment_post_request.g.dart';

@JsonSerializable()
class CommentPostRequest {
  const CommentPostRequest({
    required this.text,
  });

  final String text;

  factory CommentPostRequest.fromJson(JsonMap json) =>
      _$CommentPostRequestFromJson(json);

  JsonMap toJson() => _$CommentPostRequestToJson(this);
}
