import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/user_info/user_info.dart';

part 'user_info_response.g.dart';

@JsonSerializable()
class UserInfoResponse {
  const UserInfoResponse({
    required this.userInfo,
  });

  final UserInfo userInfo;

  factory UserInfoResponse.fromJson(JsonMap json) =>
      _$UserInfoResponseFromJson(json);

  JsonMap toJson() => _$UserInfoResponseToJson(this);
}
