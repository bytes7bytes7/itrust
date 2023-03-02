import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../json_converters/device_info_json_converter.dart';
import '../device_info/device_info.dart';

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

  @DeviceInfoJsonConverter()
  final DeviceInfo deviceInfo;

  factory LogInRequest.fromJson(JsonMap json) => _$LogInRequestFromJson(json);

  JsonMap toJson() => _$LogInRequestToJson(this);
}
