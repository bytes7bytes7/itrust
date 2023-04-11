// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceSession _$DeviceSessionFromJson(Map<String, dynamic> json) =>
    DeviceSession(
      id: DeviceSessionID.fromJson(json['id'] as Map<String, dynamic>),
      deviceInfo:
          PublicDeviceInfo.fromJson(json['deviceInfo'] as Map<String, dynamic>),
      ip: json['ip'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$DeviceSessionToJson(DeviceSession instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'deviceInfo': instance.deviceInfo.toJson(),
      'ip': instance.ip,
      'createdAt': instance.createdAt.toIso8601String(),
    };
