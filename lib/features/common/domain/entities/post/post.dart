import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_objects/value_objects.dart';

part 'post.freezed.dart';

part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required PostID id,
    required UserID authorID,
    required DateTime createdAt,
    required String text,
    required List<String> mediaUrls,
    required bool likedByMe,
    required int likesAmount,
    required int commentsAmount,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}
