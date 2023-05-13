// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageRequest _$SendMessageRequestFromJson(Map<String, dynamic> json) =>
    SendMessageRequest(
      chatID: json['chatID'] as String,
      text: json['text'] as String,
      media: (json['media'] as List<dynamic>?)
              ?.map((e) => NewMedia.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      willBeBurntAfterSec: json['willBeBurntAfterSec'] as int?,
    );

Map<String, dynamic> _$SendMessageRequestToJson(SendMessageRequest instance) =>
    <String, dynamic>{
      'chatID': instance.chatID,
      'text': instance.text,
      'media': instance.media.map((e) => e.toJson()).toList(),
      'willBeBurntAfterSec': instance.willBeBurntAfterSec,
    };
