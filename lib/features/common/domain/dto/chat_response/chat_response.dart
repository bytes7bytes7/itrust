import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/chat/chat.dart';

part 'chat_response.g.dart';

@JsonSerializable()
class ChatResponse {
  const ChatResponse({
    required this.chat,
  });

  final Chat chat;

  factory ChatResponse.fromJson(JsonMap json) => _$ChatResponseFromJson(json);

  JsonMap toJson() => _$ChatResponseToJson(this);
}
