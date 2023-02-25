import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'comment_id.freezed.dart';

part 'comment_id.g.dart';

@freezed
class CommentID with _$CommentID {
  const factory CommentID(
    String value,
  ) = _CommentID;

  const CommentID._();

  factory CommentID.fromJson(JsonMap json) =>
      _$CommentIDFromJson(json);

  String get str => value;
}
