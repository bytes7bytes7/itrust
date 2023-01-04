// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      avatarUrls: (json['avatarUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      online: json['online'] as bool,
      lastSeen: json['lastSeen'] == null
          ? null
          : DateTime.parse(json['lastSeen'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'avatarUrls': instance.avatarUrls,
      'online': instance.online,
      'lastSeen': instance.lastSeen?.toIso8601String(),
    };
