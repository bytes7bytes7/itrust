import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/log_out_response/log_out_response.dart';

@Singleton(as: JsonConverter<LogOutResponse, JsonMap>)
class LogOutResponseJsonConverter
    extends JsonConverter<LogOutResponse, JsonMap> {
  const LogOutResponseJsonConverter();

  @override
  LogOutResponse fromJson(JsonMap json) {
    return LogOutResponse.fromJson(json);
  }

  @override
  JsonMap toJson(LogOutResponse object) {
    return object.toJson();
  }
}
