import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/users_response/users_response.dart';

@Singleton(as: JsonConverter<UsersResponse, JsonMap>)
class UsersResponseJsonConverter extends JsonConverter<UsersResponse, JsonMap> {
  const UsersResponseJsonConverter();

  @override
  UsersResponse fromJson(JsonMap json) {
    return UsersResponse.fromJson(json);
  }

  @override
  JsonMap toJson(UsersResponse object) {
    return object.toJson();
  }
}
