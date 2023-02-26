// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogInResponse _$LogInResponseFromJson(Map<String, dynamic> json) =>
    LogInResponse(
      id: json['id'] as Map<String, dynamic>,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$LogInResponseToJson(LogInResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
