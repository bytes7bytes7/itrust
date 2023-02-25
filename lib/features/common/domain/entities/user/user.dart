import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/value_objects.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@Freezed(
  unionKey: 'type',
)
class User with _$User {
  const factory User.staff({
    required UserID id,
    required String name,
    required List<String> avatarUrls,
  }) = StaffUser;

  // Can be added later:
  //  bool online
  //  DateTime lastSeenAt
  const factory User.end({
    required UserID id,
    required List<String> avatarUrls,
    required String email,
    String? name,
  }) = EndUser;

  factory User.fromJson(JsonMap json) => _$UserFromJson(json);
}
