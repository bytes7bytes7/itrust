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
    required String commentsAmount,
    required bool likedByMe,
    String? avatarUrl,
  }) = _PostVM;
}
