import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'private_device_info.g.dart';

@JsonSerializable()
class PrivateDeviceInfo {
  const PrivateDeviceInfo({
    required this.id,
    required this.name,
    required this.platform,
  });

  final String id;
  final String name;
  final String platform;

  factory PrivateDeviceInfo.fromJson(JsonMap json) =>
      _$PrivateDeviceInfoFromJson(json);

  JsonMap toJson() => _$PrivateDeviceInfoToJson(this);
}
