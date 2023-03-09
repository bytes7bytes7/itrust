// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_personal_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePersonalInfoResponse _$ChangePersonalInfoResponseFromJson(
        Map<String, dynamic> json) =>
    ChangePersonalInfoResponse(
      user: EndUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChangePersonalInfoResponseToJson(
        ChangePersonalInfoResponse instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };
