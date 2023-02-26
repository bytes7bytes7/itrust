import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/verify_token_response/verify_token_response.dart';

@Singleton(as: JsonConverter<VerifyTokenResponse, JsonMap>)
class VerifyTokenResponseJsonConverter
    extends JsonConverter<VerifyTokenResponse, JsonMap> {
  const VerifyTokenResponseJsonConverter();

  @override
  VerifyTokenResponse fromJson(JsonMap json) {
    return VerifyTokenResponse.fromJson(json);
  }

  @override
  JsonMap toJson(VerifyTokenResponse object) {
    return object.toJson();
  }
}
