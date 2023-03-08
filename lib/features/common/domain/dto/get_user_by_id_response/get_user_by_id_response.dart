import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/user/user.dart';

part 'get_user_by_id_response.g.dart';

@JsonSerializable()
class GetUserByIDResponse {
  const GetUserByIDResponse({
    required this.user,
  });

  final User user;

  factory GetUserByIDResponse.fromJson(JsonMap json) =>
      _$GetUserByIDResponseFromJson(json);

  JsonMap toJson() => _$GetUserByIDResponseToJson(this);
}
