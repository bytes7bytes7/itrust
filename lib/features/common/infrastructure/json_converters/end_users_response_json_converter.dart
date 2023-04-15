import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/end_users_response/end_users_response.dart';

@Singleton(as: JsonConverter<EndUsersResponse, JsonMap>)
class EndUsersResponseJsonConverter
    extends JsonConverter<EndUsersResponse, JsonMap> {
  const EndUsersResponseJsonConverter();

  @override
  EndUsersResponse fromJson(JsonMap json) {
    return EndUsersResponse.fromJson(json);
  }

  @override
  JsonMap toJson(EndUsersResponse object) {
    return object.toJson();
  }
}
