import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/get_devices_response/get_devices_response.dart';

@Singleton(as: JsonConverter<GetDevicesResponse, JsonMap>)
class GetDevicesResponseJsonConverter
    extends JsonConverter<GetDevicesResponse, JsonMap> {
  const GetDevicesResponseJsonConverter();

  @override
  GetDevicesResponse fromJson(JsonMap json) {
    return GetDevicesResponse.fromJson(json);
  }

  @override
  JsonMap toJson(GetDevicesResponse object) {
    return object.toJson();
  }
}
