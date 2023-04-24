import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/value_objects.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@Freezed(
  unionKey: 'type',
)
class User with _$User {
  const factory User.end({
    required UserID id,
    required String email,
    required String firstName,
    required int avatarsAmount,
    required bool isOnline,
    int? lastSeenAtMSSinceEpoch,
    String? avatarUrl,
    String? lastName,
    String? nick,
  }) = EndUser;

  const factory User.staff({
    required UserID id,
    required String name,
    required int avatarsAmount,
    String? avatarUrl,
    String? nick,
  }) = StaffUser;

  factory User.fromJson(JsonMap json) => _$UserFromJson(json);
}
