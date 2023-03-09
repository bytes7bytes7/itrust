import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';

part 'change_personal_info_request.g.dart';

@JsonSerializable()
class ChangePersonalInfoRequest {
  const ChangePersonalInfoRequest({
    required this.firstName,
    required this.lastName,
  });

  final String firstName;
  final String lastName;

  factory ChangePersonalInfoRequest.fromJson(JsonMap json) =>
      _$ChangePersonalInfoRequestFromJson(json);

  JsonMap toJson() => _$ChangePersonalInfoRequestToJson(this);
}
