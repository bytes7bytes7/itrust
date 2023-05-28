// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_session_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveSessionRequest _$RemoveSessionRequestFromJson(
        Map<String, dynamic> json) =>
    RemoveSessionRequest(
      sessionID: json['sessionID'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RemoveSessionRequestToJson(
        RemoveSessionRequest instance) =>
    <String, dynamic>{
      'sessionID': instance.sessionID,
      'password': instance.password,
    };
