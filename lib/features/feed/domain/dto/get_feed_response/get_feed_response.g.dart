// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFeedResponse _$GetFeedResponseFromJson(Map<String, dynamic> json) =>
    GetFeedResponse(
      posts: (json['posts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetFeedResponseToJson(GetFeedResponse instance) =>
    <String, dynamic>{
      'posts': instance.posts.map((e) => e.toJson()).toList(),
    };
