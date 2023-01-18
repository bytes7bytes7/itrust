// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonologueChat _$$MonologueChatFromJson(Map<String, dynamic> json) =>
    _$MonologueChat(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      unreadAmount: json['unreadAmount'] as int,
      title: json['title'] as String,
      lastMessageID: json['lastMessageID'] == null
          ? null
          : MessageID.fromJson(json['lastMessageID'] as Map<String, dynamic>),
      picUrl: json['picUrl'] as String?,
      iconName: json['iconName'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MonologueChatToJson(_$MonologueChat instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'unreadAmount': instance.unreadAmount,
      'title': instance.title,
      'lastMessageID': instance.lastMessageID?.toJson(),
      'picUrl': instance.picUrl,
      'iconName': instance.iconName,
      'type': instance.$type,
    };

_$DialogueChat _$$DialogueChatFromJson(Map<String, dynamic> json) =>
    _$DialogueChat(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      unreadAmount: json['unreadAmount'] as int,
      partnerID: UserID.fromJson(json['partnerID'] as Map<String, dynamic>),
      lastMessageID: json['lastMessageID'] == null
          ? null
          : MessageID.fromJson(json['lastMessageID'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DialogueChatToJson(_$DialogueChat instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'unreadAmount': instance.unreadAmount,
      'partnerID': instance.partnerID.toJson(),
      'lastMessageID': instance.lastMessageID?.toJson(),
      'type': instance.$type,
    };

_$GroupChat _$$GroupChatFromJson(Map<String, dynamic> json) => _$GroupChat(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      unreadAmount: json['unreadAmount'] as int,
      title: json['title'] as String,
      lastMessageID: json['lastMessageID'] == null
          ? null
          : MessageID.fromJson(json['lastMessageID'] as Map<String, dynamic>),
      picUrl: json['picUrl'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GroupChatToJson(_$GroupChat instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'unreadAmount': instance.unreadAmount,
      'title': instance.title,
      'lastMessageID': instance.lastMessageID?.toJson(),
      'picUrl': instance.picUrl,
      'type': instance.$type,
    };