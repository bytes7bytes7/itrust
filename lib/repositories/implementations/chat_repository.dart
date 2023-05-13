import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/chat_repository.dart';

@dev
@Singleton(as: ChatRepository)
class DevChatRepository implements ChatRepository {
  final _storage = <ChatID, Chat>{};

  @override
  Future<Chat?> getByID(ChatID chatID) async {
    return _storage[chatID];
  }

  @override
  Future<void> addOrUpdate(Chat chat) async {
    _storage[chat.id] = chat;
  }

  @override
  Future<void> addAllOrUpdate(List<Chat> chats) async {
    for (final e in chats) {
      _storage[e.id] = e;
    }
  }
}
