import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/device_session/device_session.dart';

part 'get_devices_response.g.dart';

@JsonSerializable()
class GetDevicesResponse {
  const GetDevicesResponse({
    required this.thisSession,
    required this.otherSessions,
  });

  final DeviceSession thisSession;
  final List<DeviceSession> otherSessions;

  factory GetDevicesResponse.fromJson(JsonMap json) =>
      _$GetDevicesResponseFromJson(json);

  JsonMap toJson() => _$GetDevicesResponseToJson(this);
}
