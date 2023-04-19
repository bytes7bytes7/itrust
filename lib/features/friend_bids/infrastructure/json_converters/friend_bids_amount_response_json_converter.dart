import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/friend_bids_amount_response/friend_bids_amount_response.dart';

@Singleton(as: JsonConverter<FriendBidsAmountResponse, JsonMap>)
class FriendBidsAmountResponseJsonConverter
    extends JsonConverter<FriendBidsAmountResponse, JsonMap> {
  const FriendBidsAmountResponseJsonConverter();

  @override
  FriendBidsAmountResponse fromJson(JsonMap json) {
    return FriendBidsAmountResponse.fromJson(json);
  }

  @override
  JsonMap toJson(FriendBidsAmountResponse object) {
    return object.toJson();
  }
}
