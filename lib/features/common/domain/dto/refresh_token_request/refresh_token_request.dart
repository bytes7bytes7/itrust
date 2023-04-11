import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../common.dart';

part 'refresh_token_request.g.dart';

@JsonSerializable()
class RefreshTokenRequest {
  const RefreshTokenRequest({
    required this.refreshToken,
    required this.deviceInfo,
  });

  final String refreshToken;
  final PrivateDeviceInfo deviceInfo;

  factory RefreshTokenRequest.fromJson(JsonMap json) =>
      _$RefreshTokenRequestFromJson(json);

  JsonMap toJson() => _$RefreshTokenRequestToJson(this);
}
