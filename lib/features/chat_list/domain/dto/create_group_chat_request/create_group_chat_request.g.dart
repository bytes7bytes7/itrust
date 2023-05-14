// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_chat_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGroupChatRequest _$CreateGroupChatRequestFromJson(
        Map<String, dynamic> json) =>
    CreateGroupChatRequest(
      title: json['title'] as String,
      guestIDs: (json['guestIDs'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] == null
          ? null
          : NewMedia.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateGroupChatRequestToJson(
        CreateGroupChatRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'guestIDs': instance.guestIDs.map((e) => e.toJson()).toList(),
      'image': instance.image?.toJson(),
    };
