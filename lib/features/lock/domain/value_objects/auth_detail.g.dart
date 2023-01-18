// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthDetail _$$_AuthDetailFromJson(Map<String, dynamic> json) =>
    _$_AuthDetail(
      userID: UserID.fromJson(json['userID'] as Map<String, dynamic>),
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$_AuthDetailToJson(_$_AuthDetail instance) =>
    <String, dynamic>{
      'userID': instance.userID.toJson(),
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };
