import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/user_id/user_id.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  const RegisterResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.accessToken,
    required this.refreshToken,
  });

  final UserID id;
  final String firstName;
  final String lastName;
  final String email;
  final String accessToken;
  final String refreshToken;

  factory RegisterResponse.fromJson(JsonMap json) =>
      _$RegisterResponseFromJson(json);

  JsonMap toJson() => _$RegisterResponseToJson(this);
}
