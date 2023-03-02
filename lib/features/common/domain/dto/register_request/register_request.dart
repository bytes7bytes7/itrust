import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../json_converters/device_info_json_converter.dart';
import '../device_info/device_info.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  const RegisterRequest({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.deviceInfo,
  });

  final String email;
  final String password;
  final String firstName;
  final String lastName;

  @DeviceInfoJsonConverter()
  final DeviceInfo deviceInfo;

  factory RegisterRequest.fromJson(JsonMap json) =>
      _$RegisterRequestFromJson(json);

  JsonMap toJson() => _$RegisterRequestToJson(this);
}
