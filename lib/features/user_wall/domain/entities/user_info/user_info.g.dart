// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffUserInfo _$$StaffUserInfoFromJson(Map<String, dynamic> json) =>
    _$StaffUserInfo(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StaffUserInfoToJson(_$StaffUserInfo instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'runtimeType': instance.$type,
    };

_$EndUserInfo _$$EndUserInfoFromJson(Map<String, dynamic> json) =>
    _$EndUserInfo(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EndUserInfoToJson(_$EndUserInfo instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'runtimeType': instance.$type,
    };
