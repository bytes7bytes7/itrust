import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'friend_bids_amount_response.g.dart';

@JsonSerializable()
class FriendBidsAmountResponse {
  const FriendBidsAmountResponse({
    required this.inboxAmount,
    required this.outboxAmount,
  });

  final int inboxAmount;
  final int outboxAmount;

  factory FriendBidsAmountResponse.fromJson(JsonMap json) =>
      _$FriendBidsAmountResponseFromJson(json);

  JsonMap toJson() => _$FriendBidsAmountResponseToJson(this);
}
