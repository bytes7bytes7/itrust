import 'dart:async';

import '../../domain/domain.dart';

abstract class ChatRepository {
  int get length;

  FutureOr<Chat> getByID(ChatID id);

  void addAll(List<Chat> chats);
}
