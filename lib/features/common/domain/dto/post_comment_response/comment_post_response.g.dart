// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentPostResponse _$CommentPostResponseFromJson(Map<String, dynamic> json) =>
    CommentPostResponse(
      comment: Comment.fromJson(json['comment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentPostResponseToJson(
        CommentPostResponse instance) =>
    <String, dynamic>{
      'comment': instance.comment.toJson(),
    };
