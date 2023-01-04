// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      avatarUrl: json['avatarUrl'] as String?,
      icon: json['icon'] as String?,
      title: json['title'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      unreadAmount: json['unreadAmount'] as int,
      chatType: $enumDecode(_$ChatTypeEnumMap, json['chatType']),
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'avatarUrl': instance.avatarUrl,
      'icon': instance.icon,
      'title': instance.title,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'unreadAmount': instance.unreadAmount,
      'chatType': _$ChatTypeEnumMap[instance.chatType]!,
    };

const _$ChatTypeEnumMap = {
  ChatType.dialog: 0,
  ChatType.group: 1,
};
