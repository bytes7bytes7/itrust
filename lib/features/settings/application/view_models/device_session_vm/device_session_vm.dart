import '../device_info_vm/device_info_vm.dart';

class DeviceSessionVM {
  const DeviceSessionVM({
    required this.id,
    required this.deviceInfo,
    required this.ip,
    required this.createdAt,
  });

  final String id;
  final DeviceInfoVM deviceInfo;
  final String ip;
  final String createdAt;
}
