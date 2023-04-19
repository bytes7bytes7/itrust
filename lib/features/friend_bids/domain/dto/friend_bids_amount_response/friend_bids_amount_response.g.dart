// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_bids_amount_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendBidsAmountResponse _$FriendBidsAmountResponseFromJson(
        Map<String, dynamic> json) =>
    FriendBidsAmountResponse(
      inboxAmount: json['inboxAmount'] as int,
      outboxAmount: json['outboxAmount'] as int,
    );

Map<String, dynamic> _$FriendBidsAmountResponseToJson(
        FriendBidsAmountResponse instance) =>
    <String, dynamic>{
      'inboxAmount': instance.inboxAmount,
      'outboxAmount': instance.outboxAmount,
    };
