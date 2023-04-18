import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'people_amount_response.g.dart';

@JsonSerializable()
class PeopleAmountResponse {
  const PeopleAmountResponse({
    required this.allUsersAmount,
    required this.friendsAmount,
    required this.subscribersAmount,
    required this.subscriptionsAmount,
  });

  final int allUsersAmount;
  final int friendsAmount;
  final int subscribersAmount;
  final int subscriptionsAmount;

  factory PeopleAmountResponse.fromJson(JsonMap json) =>
      _$PeopleAmountResponseFromJson(json);

  JsonMap toJson() => _$PeopleAmountResponseToJson(this);
}
