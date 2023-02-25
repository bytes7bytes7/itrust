import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  const RegisterResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.token,
  });

  final JsonMap id;
  final String firstName;
  final String lastName;
  final String email;
  final String token;

  factory RegisterResponse.fromJson(JsonMap json) =>
      _$RegisterResponseFromJson(json);

  JsonMap toJson() => _$RegisterResponseToJson(this);
}
