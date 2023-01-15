import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_id.freezed.dart';

part 'user_id.g.dart';

@Freezed(
  toStringOverride: false,
)
class UserID with _$UserID {
  const factory UserID(
    String value,
  ) = _UserID;

  const UserID._();

  factory UserID.fromJson(Map<String, Object?> json) => _$UserIDFromJson(json);

  String get str => value;
}
