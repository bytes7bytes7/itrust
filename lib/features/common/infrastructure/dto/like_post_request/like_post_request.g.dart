// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikePostRequest _$LikePostRequestFromJson(Map<String, dynamic> json) =>
    LikePostRequest(
      id: json['id'] as String,
      likedByMe: json['likedByMe'] as bool,
    );

Map<String, dynamic> _$LikePostRequestToJson(LikePostRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'likedByMe': instance.likedByMe,
    };
