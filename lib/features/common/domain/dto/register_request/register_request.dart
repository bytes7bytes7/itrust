import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../private_device_info/private_device_info.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  const RegisterRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.agreeWithRules,
    required this.deviceInfo,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final bool agreeWithRules;
  final PrivateDeviceInfo deviceInfo;

  factory RegisterRequest.fromJson(JsonMap json) =>
      _$RegisterRequestFromJson(json);

  JsonMap toJson() => _$RegisterRequestToJson(this);
}
