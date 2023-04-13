// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostCommentResponse _$PostCommentResponseFromJson(Map<String, dynamic> json) =>
    PostCommentResponse(
      comment: Comment.fromJson(json['comment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostCommentResponseToJson(
        PostCommentResponse instance) =>
    <String, dynamic>{
      'comment': instance.comment.toJson(),
    };
