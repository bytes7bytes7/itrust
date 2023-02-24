import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_request.g.dart';

@JsonSerializable()
class LogInRequest {
  const LogInRequest({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  factory LogInRequest.fromJson(Map<String, Object?> json) =>
      _$LogInRequestFromJson(json);

  Map<String, Object?> toJson() => _$LogInRequestToJson(this);
}
