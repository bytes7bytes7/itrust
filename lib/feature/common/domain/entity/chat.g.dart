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
      lastMessage: json['lastMessage'] == null
          ? null
          : Message.fromJson(json['lastMessage'] as Map<String, dynamic>),
      pic: json['pic'] as String?,
      icon: json['icon'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MonologueChatToJson(_$MonologueChat instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'unreadAmount': instance.unreadAmount,
      'title': instance.title,
      'lastMessage': instance.lastMessage?.toJson(),
      'pic': instance.pic,
      'icon': instance.icon,
      'type': instance.$type,
    };

_$DialogueChat _$$DialogueChatFromJson(Map<String, dynamic> json) =>
    _$DialogueChat(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      unreadAmount: json['unreadAmount'] as int,
      partnerID: UserID.fromJson(json['partnerID'] as Map<String, dynamic>),
      lastMessage: json['lastMessage'] == null
          ? null
          : Message.fromJson(json['lastMessage'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DialogueChatToJson(_$DialogueChat instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'unreadAmount': instance.unreadAmount,
      'partnerID': instance.partnerID.toJson(),
      'lastMessage': instance.lastMessage?.toJson(),
      'type': instance.$type,
    };

_$GroupChat _$$GroupChatFromJson(Map<String, dynamic> json) => _$GroupChat(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      unreadAmount: json['unreadAmount'] as int,
      title: json['title'] as String,
      lastMessage: json['lastMessage'] == null
          ? null
          : Message.fromJson(json['lastMessage'] as Map<String, dynamic>),
      pic: json['pic'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GroupChatToJson(_$GroupChat instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'unreadAmount': instance.unreadAmount,
      'title': instance.title,
      'lastMessage': instance.lastMessage?.toJson(),
      'pic': instance.pic,
      'type': instance.$type,
    };
