// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostCommentRequest _$PostCommentRequestFromJson(Map<String, dynamic> json) =>
    PostCommentRequest(
      text: json['text'] as String,
      repliedToCommentID: json['repliedToCommentID'] as String?,
    );

Map<String, dynamic> _$PostCommentRequestToJson(PostCommentRequest instance) =>
    <String, dynamic>{
      'text': instance.text,
      'repliedToCommentID': instance.repliedToCommentID,
    };
