import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/user/user.dart';

part 'users_response.g.dart';

@JsonSerializable()
class UsersResponse {
  const UsersResponse({
    required this.users,
  });

  final List<User> users;

  factory UsersResponse.fromJson(JsonMap json) => _$UsersResponseFromJson(json);

  JsonMap toJson() => _$UsersResponseToJson(this);
}
