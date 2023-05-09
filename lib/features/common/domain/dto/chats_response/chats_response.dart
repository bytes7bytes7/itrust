import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/chat/chat.dart';

part 'chats_response.g.dart';

@JsonSerializable()
class ChatsResponse {
  const ChatsResponse({
    required this.chats,
  });

  final List<Chat> chats;

  factory ChatsResponse.fromJson(JsonMap json) => _$ChatsResponseFromJson(json);

  JsonMap toJson() => _$ChatsResponseToJson(this);
}
