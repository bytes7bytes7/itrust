import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'post_id.freezed.dart';

part 'post_id.g.dart';

@freezed
class PostID with _$PostID {
  const factory PostID(
    String value,
  ) = _PostID;

  const PostID._();

  factory PostID.fromJson(JsonMap json) => _$PostIDFromJson(json);

  factory PostID.fromString(String string) => PostID(string);

  String get str => value;
}
