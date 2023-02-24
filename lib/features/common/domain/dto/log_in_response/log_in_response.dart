import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_response.g.dart';

@JsonSerializable()
class LogInResponse {
  const LogInResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.token,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String token;

  factory LogInResponse.fromJson(Map<String, Object?> json) =>
      _$LogInResponseFromJson(json);

  Map<String, Object?> toJson() => _$LogInResponseToJson(this);
}
