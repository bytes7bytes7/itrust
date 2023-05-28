import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/device_session_response/device_session_response.dart';

@Singleton(as: JsonConverter<DeviceSessionResponse, JsonMap>)
class DeviceSessionResponseJsonConverter
    extends JsonConverter<DeviceSessionResponse, JsonMap> {
  const DeviceSessionResponseJsonConverter();

  @override
  DeviceSessionResponse fromJson(JsonMap json) {
    return DeviceSessionResponse.fromJson(json);
  }

  @override
  JsonMap toJson(DeviceSessionResponse object) {
    return object.toJson();
  }
}
