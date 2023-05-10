// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_monologue_chat_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateMonologueChatRequest _$CreateMonologueChatRequestFromJson(
        Map<String, dynamic> json) =>
    CreateMonologueChatRequest(
      title: json['title'] as String,
      iconName: json['iconName'] as String?,
      image: json['image'] == null
          ? null
          : NewMedia.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateMonologueChatRequestToJson(
        CreateMonologueChatRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'iconName': instance.iconName,
      'image': instance.image?.toJson(),
    };
