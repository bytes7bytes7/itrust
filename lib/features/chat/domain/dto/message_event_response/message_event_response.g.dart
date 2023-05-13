// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageEventResponse _$MessageEventResponseFromJson(
        Map<String, dynamic> json) =>
    MessageEventResponse(
      created: (json['created'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      deleted: (json['deleted'] as List<dynamic>)
          .map((e) => MessageID.fromJson(e as Map<String, dynamic>))
          .toList(),
      updated: (json['updated'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MessageEventResponseToJson(
        MessageEventResponse instance) =>
    <String, dynamic>{
      'created': instance.created.map((e) => e.toJson()).toList(),
      'deleted': instance.deleted.map((e) => e.toJson()).toList(),
      'updated': instance.updated.map((e) => e.toJson()).toList(),
    };
