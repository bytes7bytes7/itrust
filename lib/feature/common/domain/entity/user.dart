import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/value_object.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required UserID id,
    required String name,
    required List<String> avatarUrls,
    required bool online,
    DateTime? lastSeen,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
