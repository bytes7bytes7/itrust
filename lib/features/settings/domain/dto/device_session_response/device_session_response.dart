import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/device_session/device_session.dart';

part 'device_session_response.g.dart';

@JsonSerializable()
class DeviceSessionResponse {
  const DeviceSessionResponse({
    required this.thisSession,
    required this.otherSessions,
  });

  final DeviceSession thisSession;
  final List<DeviceSession> otherSessions;

  factory DeviceSessionResponse.fromJson(JsonMap json) =>
      _$DeviceSessionResponseFromJson(json);

  JsonMap toJson() => _$DeviceSessionResponseToJson(this);
}
