import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_id.freezed.dart';

part 'post_id.g.dart';

@freezed
class PostID with _$PostID {
  const factory PostID(
    String value,
  ) = _PostID;

  const PostID._();

  factory PostID.fromJson(Map<String, Object?> json) => _$PostIDFromJson(json);

  String get str => value;
}
