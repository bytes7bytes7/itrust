// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: MessageID.fromJson(json['id'] as Map<String, dynamic>),
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      text: json['text'] as String,
      mediaUrls:
          (json['mediaUrls'] as List<dynamic>).map((e) => e as String).toList(),
      sentAt: DateTime.parse(json['sentAt'] as String),
      isRead: json['isRead'] as bool,
      sender: json['sender'] == null
          ? null
          : User.fromJson(json['sender'] as Map<String, dynamic>),
      modifiedAt: json['modifiedAt'] == null
          ? null
          : DateTime.parse(json['modifiedAt'] as String),
      willBeBurntAt: json['willBeBurntAt'] == null
          ? null
          : DateTime.parse(json['willBeBurntAt'] as String),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'chatID': instance.chatID.toJson(),
      'text': instance.text,
      'mediaUrls': instance.mediaUrls,
      'sentAt': instance.sentAt.toIso8601String(),
      'isRead': instance.isRead,
      'sender': instance.sender?.toJson(),
      'modifiedAt': instance.modifiedAt?.toIso8601String(),
      'willBeBurntAt': instance.willBeBurntAt?.toIso8601String(),
    };
