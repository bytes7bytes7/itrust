import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/value_objects.dart';
import '../media/media.dart';

part 'post.freezed.dart';

part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required PostID id,
    required UserID authorID,
    required DateTime createdAt,
    required String text,
    required List<Media> media,
    required bool likedByMe,
    required int likesAmount,
    required int commentsAmount,
    required List<String> tags,
  }) = _Post;

  factory Post.fromJson(JsonMap json) => _$PostFromJson(json);
}
