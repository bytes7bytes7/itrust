// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_devices_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetDevicesResponse _$GetDevicesResponseFromJson(Map<String, dynamic> json) =>
    GetDevicesResponse(
      thisSession:
          DeviceSession.fromJson(json['thisSession'] as Map<String, dynamic>),
      otherSessions: (json['otherSessions'] as List<dynamic>)
          .map((e) => DeviceSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetDevicesResponseToJson(GetDevicesResponse instance) =>
    <String, dynamic>{
      'thisSession': instance.thisSession.toJson(),
      'otherSessions': instance.otherSessions.map((e) => e.toJson()).toList(),
    };
