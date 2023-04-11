import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'device_session_id.freezed.dart';

part 'device_session_id.g.dart';

@freezed
class DeviceSessionID with _$DeviceSessionID {
  const factory DeviceSessionID(
    String value,
  ) = _DeviceSessionID;

  const DeviceSessionID._();

  factory DeviceSessionID.fromJson(JsonMap json) =>
      _$DeviceSessionIDFromJson(json);

  String get str => value;
}
