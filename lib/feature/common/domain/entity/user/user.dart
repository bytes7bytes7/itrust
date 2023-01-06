import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_object/value_object.dart';

part 'user.freezed.dart';

part 'user.g.dart';

part 'end_user_business_logic.dart';

@Freezed(
  unionKey: 'type',
  copyWith: false,
)
class User with _$User {
  const factory User.staff({
    required UserID id,
    required String name,
    required List<String> avatarUrls,
  }) = StaffUser;

  const factory User.end({
    required UserID id,
    required String name,
    required List<String> avatarUrls,
    required bool online,
    DateTime? lastSeen,
  }) = EndUser;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
