// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostCommentsResponse _$PostCommentsResponseFromJson(
        Map<String, dynamic> json) =>
    PostCommentsResponse(
      comments: (json['comments'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostCommentsResponseToJson(
        PostCommentsResponse instance) =>
    <String, dynamic>{
      'comments': instance.comments.map((e) => e.toJson()).toList(),
    };
