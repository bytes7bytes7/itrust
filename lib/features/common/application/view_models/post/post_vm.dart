import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_vm.freezed.dart';

@Freezed(
  fromJson: false,
  toJson: false,
)
class PostVM with _$PostVM {
  const factory PostVM({
    required String id,
    required String authorID,
    required String authorName,
    required String createdAt,
    required String text,
    required List<String> mediaUrls,
    required bool likedByMe,
    required String likesAmountWithoutMyLike,
    required String likesAmountWithMyLike,
    required String commentsAmount,
    required List<String> tags,
    String? avatarUrl,
  }) = _PostVM;
}
