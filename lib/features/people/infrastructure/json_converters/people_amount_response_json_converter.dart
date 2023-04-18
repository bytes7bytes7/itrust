import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/people_amount_response/people_amount_response.dart';

@Singleton(as: JsonConverter<PeopleAmountResponse, JsonMap>)
class PeopleAmountResponseJsonConverter
    extends JsonConverter<PeopleAmountResponse, JsonMap> {
  const PeopleAmountResponseJsonConverter();

  @override
  PeopleAmountResponse fromJson(JsonMap json) {
    return PeopleAmountResponse.fromJson(json);
  }

  @override
  JsonMap toJson(PeopleAmountResponse object) {
    return object.toJson();
  }
}
