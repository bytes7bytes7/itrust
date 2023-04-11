import '../../entities/device_session/device_session.dart';

class DeviceSessionList {
  const DeviceSessionList({
    required this.thisSession,
    required this.otherSessions,
  });

  final DeviceSession thisSession;
  final List<DeviceSession> otherSessions;
}
