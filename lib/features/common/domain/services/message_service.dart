import 'package:injectable/injectable.dart';

import '../entities/message/message.dart';
import '../value_objects/chat_id/chat_id.dart';
import '../value_objects/message_id/message_id.dart';
import '../value_objects/user_id/user_id.dart';

@singleton
class MessageService {
  Future<Message?> getMessageByID(
    MessageID id, {
    bool cached = true,
  }) async {
    // TODO: implement
    return UserMessage(
      id: id,
      chatID: ChatID.fromString('1'),
      senderID: UserID.fromString('ecce0d0aa-d59f-4740-8a87-bf07a56f18bd'),
      sentAt: DateTime.now(),
      isReadyByMe: false,
      text: 'Some message text (very looooooong text).'
          ' Some more text of this message',
      mediaIDs: [],
    );
  }
}
