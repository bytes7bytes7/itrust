import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'device_info.g.dart';

@JsonSerializable()
class DeviceInfo {
  const DeviceInfo({
    required this.id,
    required this.name,
    required this.platform,
  });

  final String id;
  final String name;
  final String platform;

  factory DeviceInfo.fromJson(JsonMap json) => _$DeviceInfoFromJson(json);

  JsonMap toJson() => _$DeviceInfoToJson(this);
}
