import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/change_personal_info_response/change_personal_info_response.dart';

@Singleton(as: JsonConverter<ChangePersonalInfoResponse, JsonMap>)
class ChangePersonalInfoResponseJsonConverter
    extends JsonConverter<ChangePersonalInfoResponse, JsonMap> {
  const ChangePersonalInfoResponseJsonConverter();

  @override
  ChangePersonalInfoResponse fromJson(JsonMap json) {
    return ChangePersonalInfoResponse.fromJson(json);
  }

  @override
  JsonMap toJson(ChangePersonalInfoResponse object) {
    return object.toJson();
  }
}
