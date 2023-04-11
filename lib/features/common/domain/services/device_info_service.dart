import '../dto/private_device_info/private_device_info.dart';

abstract class DeviceInfoService {
  Future<PrivateDeviceInfo> getDeviceInfo();
}
