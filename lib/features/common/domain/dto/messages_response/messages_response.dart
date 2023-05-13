import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../entities/message/message.dart';

part 'messages_response.g.dart';

@JsonSerializable()
class MessagesResponse {
  const MessagesResponse({
    required this.messages,
  });

  final List<Message> messages;

  factory MessagesResponse.fromJson(JsonMap json) =>
      _$MessagesResponseFromJson(json);

  JsonMap toJson() => _$MessagesResponseToJson(this);
}
