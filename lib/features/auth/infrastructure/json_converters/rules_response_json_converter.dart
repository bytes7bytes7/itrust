import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/rules_response/rules_response.dart';

@Singleton(as: JsonConverter<RulesResponse, JsonMap>)
class RulesResponseJsonConverter extends JsonConverter<RulesResponse, JsonMap> {
  const RulesResponseJsonConverter();

  @override
  RulesResponse fromJson(JsonMap json) {
    return RulesResponse.fromJson(json);
  }

  @override
  JsonMap toJson(RulesResponse object) {
    return object.toJson();
  }
}
