import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/common.dart';
import '../../value_objects/value_objects.dart';

part 'comment.freezed.dart';

part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  /// If this [Comment] comments some Post,
  /// then [replyTo] == null
  /// If this [Comment] replies to other [Comment],
  /// then [replyTo] != null
  const factory Comment({
    required CommentID id,
    required UserID authorID,
    required PostID postID,
    required DateTime createdAt,
    required String text,
    required bool likedByMe,
    required int repliesAmount,
    CommentID? replyTo,
    DateTime? modifiedAt,
  }) = _Comment;

  factory Comment.fromJson(Map<String, Object?> json) =>
      _$CommentFromJson(json);
}
