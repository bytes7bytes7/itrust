import 'package:injectable/injectable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/register_response/register_response.dart';

@singleton
class RegisterResponseJsonConverter
    extends JsonConverter<RegisterResponse, JsonMap> {
  const RegisterResponseJsonConverter();

  @override
  RegisterResponse fromJson(JsonMap json) {
    return RegisterResponse.fromJson(json);
  }

  @override
  JsonMap toJson(RegisterResponse object) {
    return object.toJson();
  }
}
