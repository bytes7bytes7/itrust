import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/typedef.dart';
import '../../../common/domain/domain.dart';

part 'chat_burn.freezed.dart';

part 'chat_burn.g.dart';

@freezed
class ChatBurn with _$ChatBurn {
  const factory ChatBurn({
    required ChatID chatID,
    required bool burn,
    Duration? burnAfter,
  }) = _ChatBurn;

  factory ChatBurn.fromJson(JsonMap json) =>
      _$ChatBurnFromJson(json);
}
