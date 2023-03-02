import '../dto/device_info/device_info.dart';

abstract class DeviceInfoService {
  Future<DeviceInfo> getDeviceInfo();
}
