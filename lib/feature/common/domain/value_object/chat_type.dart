import 'package:freezed_annotation/freezed_annotation.dart';

enum ChatType {
  @JsonValue(0)
  dialog,
  @JsonValue(1)
  group,
}
