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
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StaffUserToJson(_$StaffUser instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'avatarUrls': instance.avatarUrls,
      'type': instance.$type,
    };

_$EndUser _$$EndUserFromJson(Map<String, dynamic> json) => _$EndUser(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      avatarUrls: (json['avatarUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      email: json['email'] as String,
      name: json['name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$EndUserToJson(_$EndUser instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'avatarUrls': instance.avatarUrls,
      'email': instance.email,
      'name': instance.name,
      'type': instance.$type,
    };
