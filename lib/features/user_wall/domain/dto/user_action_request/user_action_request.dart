import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'user_action_request.g.dart';

@JsonSerializable()
class UserActionRequest {
  const UserActionRequest({
    required this.userID,
  });

  final String userID;

  factory UserActionRequest.fromJson(JsonMap json) =>
      _$UserActionRequestFromJson(json);

  JsonMap toJson() => _$UserActionRequestToJson(this);
}
