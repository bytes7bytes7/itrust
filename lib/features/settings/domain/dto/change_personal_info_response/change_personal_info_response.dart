import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';
import '../../../../common/common.dart';

part 'change_personal_info_response.g.dart';

@JsonSerializable()
class ChangePersonalInfoResponse {
  const ChangePersonalInfoResponse({
    required this.user,
  });

  final EndUser user;

  factory ChangePersonalInfoResponse.fromJson(JsonMap json) =>
      _$ChangePersonalInfoResponseFromJson(json);

  JsonMap toJson() => _$ChangePersonalInfoResponseToJson(this);
}
