// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogInRequest _$LogInRequestFromJson(Map<String, dynamic> json) => LogInRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      deviceInfo: const DeviceInfoJsonConverter()
          .fromJson(json['deviceInfo'] as String),
    );

Map<String, dynamic> _$LogInRequestToJson(LogInRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'deviceInfo': const DeviceInfoJsonConverter().toJson(instance.deviceInfo),
    };
