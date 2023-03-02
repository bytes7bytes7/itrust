import 'package:freezed_annotation/freezed_annotation.dart';

import '../dto/device_info/device_info.dart';

const _separator = ', ';

class DeviceInfoJsonConverter extends JsonConverter<DeviceInfo, String> {
  const DeviceInfoJsonConverter();

  @override
  DeviceInfo fromJson(String json) {
    final separatorIndex = json.lastIndexOf(_separator);
    final name = json.substring(0, separatorIndex);
    final platform = json.substring(separatorIndex + _separator.length);

    return DeviceInfo(
      name: name,
      platform: platform,
    );
  }

  @override
  String toJson(DeviceInfo object) {
    return '${object.name}$_separator${object.platform}';
  }
}
