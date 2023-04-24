// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EndUser _$$EndUserFromJson(Map<String, dynamic> json) => _$EndUser(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      avatarsAmount: json['avatarsAmount'] as int,
      isOnline: json['isOnline'] as bool,
      lastSeenAtMSSinceEpoch: json['lastSeenAtMSSinceEpoch'] as int?,
      avatarUrl: json['avatarUrl'] as String?,
      lastName: json['lastName'] as String?,
      nick: json['nick'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$EndUserToJson(_$EndUser instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'email': instance.email,
      'firstName': instance.firstName,
      'avatarsAmount': instance.avatarsAmount,
      'isOnline': instance.isOnline,
      'lastSeenAtMSSinceEpoch': instance.lastSeenAtMSSinceEpoch,
      'avatarUrl': instance.avatarUrl,
      'lastName': instance.lastName,
      'nick': instance.nick,
      'type': instance.$type,
    };

_$StaffUser _$$StaffUserFromJson(Map<String, dynamic> json) => _$StaffUser(
      id: UserID.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      avatarsAmount: json['avatarsAmount'] as int,
      avatarUrl: json['avatarUrl'] as String?,
      nick: json['nick'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StaffUserToJson(_$StaffUser instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'avatarsAmount': instance.avatarsAmount,
      'avatarUrl': instance.avatarUrl,
      'nick': instance.nick,
      'type': instance.$type,
    };
