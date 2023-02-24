import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_post_request.g.dart';

@JsonSerializable()
class LikePostRequest {
  const LikePostRequest({
    required this.id,
    required this.likedByMe,
  });

  final String id;
  final bool likedByMe;

  factory LikePostRequest.fromJson(Map<String, dynamic> json) =>
      _$LikePostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LikePostRequestToJson(this);
}
