import 'package:freezed_annotation/freezed_annotation.dart';

enum ChatRole {
  @JsonValue(0)
  admin,
  @JsonValue(1)
  participant,
}
