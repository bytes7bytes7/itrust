// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_amount_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeopleAmountResponse _$PeopleAmountResponseFromJson(
        Map<String, dynamic> json) =>
    PeopleAmountResponse(
      allUsersAmount: json['allUsersAmount'] as int,
      friendsAmount: json['friendsAmount'] as int,
      subscribersAmount: json['subscribersAmount'] as int,
      subscriptionsAmount: json['subscriptionsAmount'] as int,
    );

Map<String, dynamic> _$PeopleAmountResponseToJson(
        PeopleAmountResponse instance) =>
    <String, dynamic>{
      'allUsersAmount': instance.allUsersAmount,
      'friendsAmount': instance.friendsAmount,
      'subscribersAmount': instance.subscribersAmount,
      'subscriptionsAmount': instance.subscriptionsAmount,
    };
