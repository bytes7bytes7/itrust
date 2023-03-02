// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyTokenRequest _$VerifyTokenRequestFromJson(Map<String, dynamic> json) =>
    VerifyTokenRequest(
      deviceInfo: const DeviceInfoJsonConverter()
          .fromJson(json['deviceInfo'] as String),
    );

Map<String, dynamic> _$VerifyTokenRequestToJson(VerifyTokenRequest instance) =>
    <String, dynamic>{
      'deviceInfo': const DeviceInfoJsonConverter().toJson(instance.deviceInfo),
    };
