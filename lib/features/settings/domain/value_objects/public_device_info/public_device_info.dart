import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'public_device_info.g.dart';

@JsonSerializable()
class PublicDeviceInfo {
  const PublicDeviceInfo({
    required this.name,
    required this.platform,
  });

  final String name;
  final String platform;

  factory PublicDeviceInfo.fromJson(JsonMap json) =>
      _$PublicDeviceInfoFromJson(json);

  JsonMap toJson() => _$PublicDeviceInfoToJson(this);
}
