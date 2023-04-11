// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyTokenRequest _$VerifyTokenRequestFromJson(Map<String, dynamic> json) =>
    VerifyTokenRequest(
      deviceInfo: PrivateDeviceInfo.fromJson(
          json['deviceInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyTokenRequestToJson(VerifyTokenRequest instance) =>
    <String, dynamic>{
      'deviceInfo': instance.deviceInfo.toJson(),
    };
