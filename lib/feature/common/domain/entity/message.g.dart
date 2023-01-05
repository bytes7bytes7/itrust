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
      readBy: (json['readBy'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      markUp: json['markUp'] as String,
      markUpData: (json['markUpData'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      willBeBurntAt: json['willBeBurntAt'] == null
          ? null
          : DateTime.parse(json['willBeBurntAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InfoMessageToJson(_$InfoMessage instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'chatID': instance.chatID.toJson(),
      'sentAt': instance.sentAt.toIso8601String(),
      'readBy': instance.readBy.map((e) => e.toJson()).toList(),
      'markUp': instance.markUp,
      'markUpData': instance.markUpData,
      'willBeBurntAt': instance.willBeBurntAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$UserMessage _$$UserMessageFromJson(Map<String, dynamic> json) =>
    _$UserMessage(
      id: MessageID.fromJson(json['id'] as Map<String, dynamic>),
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      sentAt: DateTime.parse(json['sentAt'] as String),
      readBy: (json['readBy'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String,
      mediaUrls:
          (json['mediaUrls'] as List<dynamic>).map((e) => e as String).toList(),
      senderID: UserID.fromJson(json['senderID'] as Map<String, dynamic>),
      willBeBurntAt: json['willBeBurntAt'] == null
          ? null
          : DateTime.parse(json['willBeBurntAt'] as String),
      modifiedAt: json['modifiedAt'] == null
          ? null
          : DateTime.parse(json['modifiedAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserMessageToJson(_$UserMessage instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'chatID': instance.chatID.toJson(),
      'sentAt': instance.sentAt.toIso8601String(),
      'readBy': instance.readBy.map((e) => e.toJson()).toList(),
      'text': instance.text,
      'mediaUrls': instance.mediaUrls,
      'senderID': instance.senderID.toJson(),
      'willBeBurntAt': instance.willBeBurntAt?.toIso8601String(),
      'modifiedAt': instance.modifiedAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };
