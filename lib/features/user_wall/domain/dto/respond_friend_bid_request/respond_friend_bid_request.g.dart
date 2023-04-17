// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'respond_friend_bid_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RespondFriendBidRequest _$RespondFriendBidRequestFromJson(
        Map<String, dynamic> json) =>
    RespondFriendBidRequest(
      respondToUserID: json['respondToUserID'] as String,
      accept: json['accept'] as bool,
    );

Map<String, dynamic> _$RespondFriendBidRequestToJson(
        RespondFriendBidRequest instance) =>
    <String, dynamic>{
      'respondToUserID': instance.respondToUserID,
      'accept': instance.accept,
    };
