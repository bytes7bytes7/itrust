// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_last_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatLastMessage _$ChatLastMessageFromJson(Map<String, dynamic> json) =>
    ChatLastMessage(
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      messageID: json['messageID'] == null
          ? null
          : MessageID.fromJson(json['messageID'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatLastMessageToJson(ChatLastMessage instance) =>
    <String, dynamic>{
      'chatID': instance.chatID.toJson(),
      'messageID': instance.messageID?.toJson(),
    };
