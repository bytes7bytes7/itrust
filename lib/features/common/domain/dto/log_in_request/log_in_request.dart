import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../private_device_info/private_device_info.dart';

part 'log_in_request.g.dart';

@JsonSerializable()
class LogInRequest {
  const LogInRequest({
    required this.email,
    required this.password,
    required this.deviceInfo,
  });

  final String email;
  final String password;
  final PrivateDeviceInfo deviceInfo;

  factory LogInRequest.fromJson(JsonMap json) => _$LogInRequestFromJson(json);

  JsonMap toJson() => _$LogInRequestToJson(this);
}
