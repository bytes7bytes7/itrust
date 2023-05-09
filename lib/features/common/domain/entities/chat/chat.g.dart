// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonologueChat _$$MonologueChatFromJson(Map<String, dynamic> json) =>
    _$MonologueChat(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] as String,
      iconName: json['iconName'] as String?,
      pic: json['pic'] == null
          ? null
          : Media.fromJson(json['pic'] as Map<String, dynamic>),
      lastMessageID: json['lastMessageID'] == null
          ? null
          : MessageID.fromJson(json['lastMessageID'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MonologueChatToJson(_$MonologueChat instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'title': instance.title,
      'iconName': instance.iconName,
      'pic': instance.pic?.toJson(),
      'lastMessageID': instance.lastMessageID?.toJson(),
      'type': instance.$type,
    };

_$DialogueChat _$$DialogueChatFromJson(Map<String, dynamic> json) =>
    _$DialogueChat(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      partnerID: UserID.fromJson(json['partnerID'] as Map<String, dynamic>),
      unreadAmount: json['unreadAmount'] as int,
      lastMessageID: json['lastMessageID'] == null
          ? null
          : MessageID.fromJson(json['lastMessageID'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DialogueChatToJson(_$DialogueChat instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'partnerID': instance.partnerID.toJson(),
      'unreadAmount': instance.unreadAmount,
      'lastMessageID': instance.lastMessageID?.toJson(),
      'type': instance.$type,
    };

_$GroupChat _$$GroupChatFromJson(Map<String, dynamic> json) => _$GroupChat(
      id: ChatID.fromJson(json['id'] as Map<String, dynamic>),
      ownerID: UserID.fromJson(json['ownerID'] as Map<String, dynamic>),
      participantsAmount: json['participantsAmount'] as int,
      title: json['title'] as String,
      unreadAmount: json['unreadAmount'] as int,
      pic: json['pic'] == null
          ? null
          : Media.fromJson(json['pic'] as Map<String, dynamic>),
      lastMessageID: json['lastMessageID'] == null
          ? null
          : MessageID.fromJson(json['lastMessageID'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$GroupChatToJson(_$GroupChat instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'ownerID': instance.ownerID.toJson(),
      'participantsAmount': instance.participantsAmount,
      'title': instance.title,
      'unreadAmount': instance.unreadAmount,
      'pic': instance.pic?.toJson(),
      'lastMessageID': instance.lastMessageID?.toJson(),
      'type': instance.$type,
    };
