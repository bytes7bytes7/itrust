// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffUser _$$StaffUserFromJson(Map<String, dynamic> json) => _$StaffUser(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      avatarUrls: (json['avatarUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StaffUserToJson(_$StaffUser instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'avatarUrls': instance.avatarUrls,
      'runtimeType': instance.$type,
    };

_$EndUser _$$EndUserFromJson(Map<String, dynamic> json) => _$EndUser(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      avatarUrls: (json['avatarUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      online: json['online'] as bool,
      lastSeen: json['lastSeen'] == null
          ? null
          : DateTime.parse(json['lastSeen'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EndUserToJson(_$EndUser instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'avatarUrls': instance.avatarUrls,
      'online': instance.online,
      'lastSeen': instance.lastSeen?.toIso8601String(),
      'runtimeType': instance.$type,
    };
