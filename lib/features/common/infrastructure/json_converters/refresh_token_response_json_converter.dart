import 'package:injectable/injectable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../utils/typedef.dart';
import '../../common.dart';

@Singleton(as: JsonConverter<RefreshTokenResponse, JsonMap>)
class RefreshTokenResponseJsonConverter
    extends JsonConverter<RefreshTokenResponse, JsonMap> {
  @override
  RefreshTokenResponse fromJson(JsonMap json) {
    return RefreshTokenResponse.fromJson(json);
  }

  @override
  JsonMap toJson(RefreshTokenResponse object) {
    return object.toJson();
  }
}
