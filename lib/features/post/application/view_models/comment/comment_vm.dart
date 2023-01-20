import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_vm.freezed.dart';

@Freezed(
  fromJson: false,
  toJson: false,
)
class CommentVM with _$CommentVM {
  const factory CommentVM({
    required String id,
    required String authorID,
    required String postID,
    required String authorName,
    required String createdAt,
    required String text,
    required bool likedByMe,
    required String likesAmountWithoutMyLike,
    required String likesAmountWithMyLike,
    required String repliesAmount,
    String? replyTo,
    String? avatarUrl,
    String? modifiedAt,
  }) = _CommentVM;
}
