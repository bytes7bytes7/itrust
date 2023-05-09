// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfoMessage _$$InfoMessageFromJson(Map<String, dynamic> json) =>
    _$InfoMessage(
      id: MessageID.fromJson(json['id'] as Map<String, dynamic>),
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      sentAt: DateTime.parse(json['sentAt'] as String),
      isReadyByMe: json['isReadyByMe'] as bool,
      markUp: json['markUp'] as String,
      markUpData: Map<String, String>.from(json['markUpData'] as Map),
      willBeBurntAt: json['willBeBurntAt'] == null
          ? null
          : DateTime.parse(json['willBeBurntAt'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$InfoMessageToJson(_$InfoMessage instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'chatID': instance.chatID.toJson(),
      'sentAt': instance.sentAt.toIso8601String(),
      'isReadyByMe': instance.isReadyByMe,
      'markUp': instance.markUp,
      'markUpData': instance.markUpData,
      'willBeBurntAt': instance.willBeBurntAt?.toIso8601String(),
      'type': instance.$type,
    };

_$UserMessage _$$UserMessageFromJson(Map<String, dynamic> json) =>
    _$UserMessage(
      id: MessageID.fromJson(json['id'] as Map<String, dynamic>),
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      senderID: UserID.fromJson(json['senderID'] as Map<String, dynamic>),
      sentAt: DateTime.parse(json['sentAt'] as String),
      isReadyByMe: json['isReadyByMe'] as bool,
      text: json['text'] as String,
      mediaIDs: (json['mediaIDs'] as List<dynamic>)
          .map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      willBeBurntAt: json['willBeBurntAt'] == null
          ? null
          : DateTime.parse(json['willBeBurntAt'] as String),
      modifiedAt: json['modifiedAt'] == null
          ? null
          : DateTime.parse(json['modifiedAt'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UserMessageToJson(_$UserMessage instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'chatID': instance.chatID.toJson(),
      'senderID': instance.senderID.toJson(),
      'sentAt': instance.sentAt.toIso8601String(),
      'isReadyByMe': instance.isReadyByMe,
      'text': instance.text,
      'mediaIDs': instance.mediaIDs.map((e) => e.toJson()).toList(),
      'willBeBurntAt': instance.willBeBurntAt?.toIso8601String(),
      'modifiedAt': instance.modifiedAt?.toIso8601String(),
      'type': instance.$type,
    };
