import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../private_device_info/private_device_info.dart';

part 'verify_token_request.g.dart';

@JsonSerializable()
class VerifyTokenRequest {
  const VerifyTokenRequest({
    required this.deviceInfo,
  });

  final PrivateDeviceInfo deviceInfo;

  factory VerifyTokenRequest.fromJson(JsonMap json) =>
      _$VerifyTokenRequestFromJson(json);

  JsonMap toJson() => _$VerifyTokenRequestToJson(this);
}
