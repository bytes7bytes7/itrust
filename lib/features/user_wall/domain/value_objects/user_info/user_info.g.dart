// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EndUserInfo _$$EndUserInfoFromJson(Map<String, dynamic> json) =>
    _$EndUserInfo(
      user: EndUser.fromJson(json['user'] as Map<String, dynamic>),
      friendsAmount: json['friendsAmount'] as int,
      postsAmount: json['postsAmount'] as int,
      subscribersAmount: json['subscribersAmount'] as int,
      amIFriend: json['amIFriend'] as bool,
      amISubscriber: json['amISubscriber'] as bool,
      didISentFriendBid: json['didISentFriendBid'] as bool,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$EndUserInfoToJson(_$EndUserInfo instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'friendsAmount': instance.friendsAmount,
      'postsAmount': instance.postsAmount,
      'subscribersAmount': instance.subscribersAmount,
      'amIFriend': instance.amIFriend,
      'amISubscriber': instance.amISubscriber,
      'didISentFriendBid': instance.didISentFriendBid,
      'type': instance.$type,
    };

_$StaffUserInfo _$$StaffUserInfoFromJson(Map<String, dynamic> json) =>
    _$StaffUserInfo(
      user: StaffUser.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StaffUserInfoToJson(_$StaffUserInfo instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'type': instance.$type,
    };
