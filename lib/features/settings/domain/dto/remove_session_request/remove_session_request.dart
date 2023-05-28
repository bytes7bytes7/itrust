import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'remove_session_request.g.dart';

@JsonSerializable()
class RemoveSessionRequest {
  const RemoveSessionRequest({
    required this.sessionID,
    required this.password,
  });

  final String sessionID;
  final String password;

  factory RemoveSessionRequest.fromJson(JsonMap json) =>
      _$RemoveSessionRequestFromJson(json);

  JsonMap toJson() => _$RemoveSessionRequestToJson(this);
}
