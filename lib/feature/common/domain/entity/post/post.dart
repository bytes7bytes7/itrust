import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_object/post_id.dart';
import '../../value_object/user_id.dart';

part 'post.freezed.dart';

part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required PostID id,
    required UserID authorID,
    required DateTime createdAt,
    required List<UserID> seenBy,
    required String text,
    required List<String> mediaUrls,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}
