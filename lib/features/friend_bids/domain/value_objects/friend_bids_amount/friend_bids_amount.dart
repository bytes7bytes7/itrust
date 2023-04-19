import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_bids_amount.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
class FriendBidsAmount with _$FriendBidsAmount {
  const factory FriendBidsAmount({
    required int inboxAmount,
    required int outboxAmount,
  }) = _FriendBidsAmount;
}
