// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_chat_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserChatInfo _$$_UserChatInfoFromJson(Map<String, dynamic> json) =>
    _$_UserChatInfo(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      role: $enumDecode(_$ChatRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$_UserChatInfoToJson(_$_UserChatInfo instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'role': _$ChatRoleEnumMap[instance.role]!,
    };

const _$ChatRoleEnumMap = {
  ChatRole.admin: 0,
  ChatRole.participant: 1,
};
