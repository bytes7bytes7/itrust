import 'package:intl/intl.dart';
import 'package:mapster/mapster.dart';

import '../../application/view_models/device_info_vm/device_info_vm.dart';
import '../../application/view_models/device_session_vm/device_session_vm.dart';
import '../../domain/entities/device_session/device_session.dart';

class DeviceSessionToDeviceSessionVMMapper
    extends OneSourceMapper<DeviceSession, DeviceSessionVM> {
  DeviceSessionToDeviceSessionVMMapper(super.input);

  @override
  DeviceSessionVM map() {
    return DeviceSessionVM(
      id: _session.id.str,
      deviceInfo: DeviceInfoVM(
        name: _session.deviceInfo.name,
        platform: _session.deviceInfo.platform,
      ),
      ip: _session.ip,
      createdAt: DateFormat('d MMM yyy').format(_session.createdAt),
    );
  }

  DeviceSession get _session => source;
}
