import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_id.freezed.dart';

part 'user_id.g.dart';

@freezed
class UserID with _$UserID {
  const factory UserID(
    String value,
  ) = _UserID;

  factory UserID.fromJson(Map<String, Object?> json) => _$UserIDFromJson(json);
}
