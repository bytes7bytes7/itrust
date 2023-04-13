// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    RegisterRequest(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      agreeWithRules: json['agreeWithRules'] as bool,
      deviceInfo: PrivateDeviceInfo.fromJson(
          json['deviceInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'agreeWithRules': instance.agreeWithRules,
      'deviceInfo': instance.deviceInfo.toJson(),
    };
