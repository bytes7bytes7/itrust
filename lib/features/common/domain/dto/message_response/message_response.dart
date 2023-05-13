import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/message/message.dart';

part 'message_response.g.dart';

@JsonSerializable()
class MessageResponse {
  const MessageResponse({
    required this.message,
  });

  final Message message;

  factory MessageResponse.fromJson(JsonMap json) =>
      _$MessageResponseFromJson(json);

  JsonMap toJson() => _$MessageResponseToJson(this);
}
