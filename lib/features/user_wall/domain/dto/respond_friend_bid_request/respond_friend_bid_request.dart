import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'respond_friend_bid_request.g.dart';

@JsonSerializable()
class RespondFriendBidRequest {
  const RespondFriendBidRequest({
    required this.respondToUserID,
    required this.accept,
  });

  final String respondToUserID;
  final bool accept;

  factory RespondFriendBidRequest.fromJson(JsonMap json) =>
      _$RespondFriendBidRequestFromJson(json);

  JsonMap toJson() => _$RespondFriendBidRequestToJson(this);
}
