import 'package:freezed_annotation/freezed_annotation.dart';

enum MuteType {
  @JsonValue(0)
  never,
  @JsonValue(1)
  forever,
  @JsonValue(2)
  forTime,
}
