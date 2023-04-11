// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrivateDeviceInfo _$PrivateDeviceInfoFromJson(Map<String, dynamic> json) =>
    PrivateDeviceInfo(
      id: json['id'] as String,
      name: json['name'] as String,
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$PrivateDeviceInfoToJson(PrivateDeviceInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'platform': instance.platform,
    };
