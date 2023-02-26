import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'log_out_response.g.dart';

@JsonSerializable()
class LogOutResponse {
  const LogOutResponse({
    required this.info,
  });

  final String info;

  factory LogOutResponse.fromJson(JsonMap json) =>
      _$LogOutResponseFromJson(json);

  JsonMap toJson() => _$LogOutResponseToJson(this);
}
