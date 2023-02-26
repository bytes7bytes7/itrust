import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'verify_token_request.g.dart';

@JsonSerializable()
class VerifyTokenRequest {
  const VerifyTokenRequest();

  factory VerifyTokenRequest.fromJson(JsonMap json) =>
      _$VerifyTokenRequestFromJson(json);

  JsonMap toJson() => _$VerifyTokenRequestToJson(this);
}
