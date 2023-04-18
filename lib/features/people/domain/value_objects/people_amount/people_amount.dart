import 'package:freezed_annotation/freezed_annotation.dart';

part 'people_amount.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
class PeopleAmount with _$PeopleAmount {
  const factory PeopleAmount({
    required int allUsersAmount,
    required int friendsAmount,
    required int subscribersAmount,
    required int subscriptionsAmount,
  }) = _PeopleAmount;
}
