import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/domain/domain.dart';
import '../domain.dart';

part 'chat_mute.freezed.dart';

part 'chat_mute.g.dart';

@freezed
class ChatMute with _$ChatMute {
  const factory ChatMute({
    required ChatID chatID,
    required MuteType type,
    Duration? muteAt,
  }) = _ChatMute;

  final ChatID chatID;
  final MuteType type;
  final Duration? muteAt;

  factory ChatMute.fromJson(Map<String, Object?> json) =>
      _$ChatMuteFromJson(json);
}
