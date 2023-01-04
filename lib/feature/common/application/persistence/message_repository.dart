import 'dart:async';

import '../../domain/domain.dart';

abstract class MessageRepository {
  FutureOr<List<Message>> getListByChatID(ChatID chatID);

  Future<void> addAllByChatID(ChatID chatID, List<Message> messages);
}
