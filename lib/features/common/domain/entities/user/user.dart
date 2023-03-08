import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/value_objects.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@Freezed(
  unionKey: 'type',
)
class User with _$User {
  // Can be added later:
  //  bool online
  //  DateTime lastSeenAt
  const factory User.end({
    required UserID id,
    required String email,
    required String firstName,
    required List<String> avatarUrls,
    String? lastName,
    String? nick,
  }) = EndUser;

  const factory User.staff({
    required UserID id,
    required String name,
    required List<String> avatarUrls,
    String? nick,
  }) = StaffUser;

  factory User.fromJson(JsonMap json) => _$UserFromJson(json);
}
