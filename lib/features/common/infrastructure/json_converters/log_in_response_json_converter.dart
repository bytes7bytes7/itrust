import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/log_in_response/log_in_response.dart';

@Singleton(as: JsonConverter<LogInResponse, JsonMap>)
class LogInResponseJsonConverter extends JsonConverter<LogInResponse, JsonMap> {
  const LogInResponseJsonConverter();

  @override
  LogInResponse fromJson(JsonMap json) {
    return LogInResponse.fromJson(json);
  }

  @override
  JsonMap toJson(LogInResponse object) {
    return object.toJson();
  }
}
