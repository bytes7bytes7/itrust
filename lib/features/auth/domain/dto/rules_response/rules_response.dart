import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'rules_response.g.dart';

@JsonSerializable()
class RulesResponse {
  const RulesResponse({
    required this.rules,
  });

  final String rules;

  factory RulesResponse.fromJson(JsonMap json) => _$RulesResponseFromJson(json);

  JsonMap toJson() => _$RulesResponseToJson(this);
}
