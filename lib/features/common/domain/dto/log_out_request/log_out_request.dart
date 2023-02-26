import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'log_out_request.g.dart';

@JsonSerializable()
class LogOutRequest {
  const LogOutRequest();

  factory LogOutRequest.fromJson(JsonMap json) => _$LogOutRequestFromJson(json);

  JsonMap toJson() => _$LogOutRequestToJson(this);
}
