import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/get_user_by_id_response/get_user_by_id_response.dart';

@Singleton(as: JsonConverter<GetUserByIDResponse, JsonMap>)
class GetUserByIDResponseJsonConverter
    extends JsonConverter<GetUserByIDResponse, JsonMap> {
  const GetUserByIDResponseJsonConverter();

  @override
  GetUserByIDResponse fromJson(JsonMap json) {
    return GetUserByIDResponse.fromJson(json);
  }

  @override
  JsonMap toJson(GetUserByIDResponse object) {
    return object.toJson();
  }
}
