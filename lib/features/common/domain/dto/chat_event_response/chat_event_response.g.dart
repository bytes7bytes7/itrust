// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatEventResponse _$ChatEventResponseFromJson(Map<String, dynamic> json) =>
    ChatEventResponse(
      created: (json['created'] as List<dynamic>?)
              ?.map((e) => Chat.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      deleted: (json['deleted'] as List<dynamic>?)
              ?.map((e) => ChatID.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      updated: (json['updated'] as List<dynamic>?)
              ?.map((e) => Chat.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastMessage: (json['lastMessage'] as List<dynamic>?)
              ?.map((e) => ChatLastMessage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ChatEventResponseToJson(ChatEventResponse instance) =>
    <String, dynamic>{
      'created': instance.created.map((e) => e.toJson()).toList(),
      'deleted': instance.deleted.map((e) => e.toJson()).toList(),
      'updated': instance.updated.map((e) => e.toJson()).toList(),
      'lastMessage': instance.lastMessage.map((e) => e.toJson()).toList(),
    };
