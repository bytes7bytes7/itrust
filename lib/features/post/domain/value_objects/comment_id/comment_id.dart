import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_id.freezed.dart';

part 'comment_id.g.dart';

@freezed
class CommentID with _$CommentID {
  const factory CommentID(
    String value,
  ) = _CommentID;

  const CommentID._();

  factory CommentID.fromJson(Map<String, Object?> json) =>
      _$CommentIDFromJson(json);

  String get str => value;
}
