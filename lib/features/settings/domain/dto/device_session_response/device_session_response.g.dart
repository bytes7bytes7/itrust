// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceSessionResponse _$DeviceSessionResponseFromJson(
        Map<String, dynamic> json) =>
    DeviceSessionResponse(
      thisSession:
          DeviceSession.fromJson(json['thisSession'] as Map<String, dynamic>),
      otherSessions: (json['otherSessions'] as List<dynamic>)
          .map((e) => DeviceSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeviceSessionResponseToJson(
        DeviceSessionResponse instance) =>
    <String, dynamic>{
      'thisSession': instance.thisSession.toJson(),
      'otherSessions': instance.otherSessions.map((e) => e.toJson()).toList(),
    };
