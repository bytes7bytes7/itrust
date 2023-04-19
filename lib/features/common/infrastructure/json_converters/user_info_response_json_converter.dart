import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/user_info_response/user_info_response.dart';

@Singleton(as: JsonConverter<UserInfoResponse, JsonMap>)
class UserInfoResponseJsonConverter
    extends JsonConverter<UserInfoResponse, JsonMap> {
  const UserInfoResponseJsonConverter();

  @override
  UserInfoResponse fromJson(JsonMap json) {
    return UserInfoResponse.fromJson(json);
  }

  @override
  JsonMap toJson(UserInfoResponse object) {
    return object.toJson();
  }
}
