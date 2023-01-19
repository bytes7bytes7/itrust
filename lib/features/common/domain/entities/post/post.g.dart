// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: PostID.fromJson(json['id'] as Map<String, dynamic>),
      authorID: UserID.fromJson(json['authorID'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      seenBy: (json['seenBy'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String,
      mediaUrls:
          (json['mediaUrls'] as List<dynamic>).map((e) => e as String).toList(),
      commentsAmount: json['commentsAmount'] as int,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'authorID': instance.authorID.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'seenBy': instance.seenBy.map((e) => e.toJson()).toList(),
      'text': instance.text,
      'mediaUrls': instance.mediaUrls,
      'commentsAmount': instance.commentsAmount,
    };
