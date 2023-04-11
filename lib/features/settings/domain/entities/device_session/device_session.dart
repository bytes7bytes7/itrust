import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/device_session_id/device_session_id.dart';
import '../../value_objects/public_device_info/public_device_info.dart';

part 'device_session.g.dart';

@JsonSerializable()
class DeviceSession {
  const DeviceSession({
    required this.id,
    required this.deviceInfo,
    required this.ip,
    required this.createdAt,
  });

  final DeviceSessionID id;
  final PublicDeviceInfo deviceInfo;
  final String ip;
  final DateTime createdAt;

  factory DeviceSession.fromJson(JsonMap json) => _$DeviceSessionFromJson(json);

  JsonMap toJson() => _$DeviceSessionToJson(this);
}
