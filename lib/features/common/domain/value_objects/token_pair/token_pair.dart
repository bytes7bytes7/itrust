import 'package:json_annotation/json_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'token_pair.g.dart';

@JsonSerializable()
class TokenPair {
  const TokenPair({
    required this.access,
    required this.refresh,
  });

  final String access;
  final String refresh;

  factory TokenPair.fromJson(JsonMap json) => _$TokenPairFromJson(json);

  JsonMap toJson() => _$TokenPairToJson(this);
}
