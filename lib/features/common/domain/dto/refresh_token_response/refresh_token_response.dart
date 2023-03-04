import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'refresh_token_response.g.dart';

@JsonSerializable()
class RefreshTokenResponse {
  const RefreshTokenResponse({
    required this.accessToken,
    required this.refreshToken,
  });

  final String accessToken;
  final String refreshToken;

  factory RefreshTokenResponse.fromJson(JsonMap json) =>
      _$RefreshTokenResponseFromJson(json);

  JsonMap toJson() => _$RefreshTokenResponseToJson(this);
}
