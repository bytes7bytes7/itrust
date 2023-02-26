import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'verify_token_response.g.dart';

@JsonSerializable()
class VerifyTokenResponse {
  const VerifyTokenResponse({
    required this.info,
  });

  final String info;

  factory VerifyTokenResponse.fromJson(JsonMap json) =>
      _$VerifyTokenResponseFromJson(json);

  JsonMap toJson() => _$VerifyTokenResponseToJson(this);
}
