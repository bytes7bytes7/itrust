import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/chat_repository.dart';

// TODO: refactor this file

class ChatListResponse {
  final List<ChatID> remove;
  final List<Chat> update;

  const ChatListResponse({
    required this.remove,
    required this.update,
  });

  const ChatListResponse.empty()
      : remove = const [],
        update = const [];
}

// TODO: implement
@dev
@LazySingleton(as: ChatRepository)
class DevChatRepository implements ChatRepository {
  final _storage = <ChatID, Chat>{};
  final _rand = Random();

  @override
  Stream<Chat> onChatUpdate(ChatID chatID) {
    // TODO: implement
    throw UnimplementedError();
  }

  @override
  Stream<List<Chat>> get onAllChatsUpdate => const Stream.empty();

  @override
  Future<Chat?> getByID(ChatID chatID) async {
    final loadedChat = _storage[chatID];

    if (loadedChat != null) {
      return loadedChat;
    }

    await Future.delayed(Duration(seconds: _rand.nextInt(3)));
    final chat = _rand.nextBool() ? _loadChat(chatID) : null;

    if (chat != null) {
      _storage[chat.id] = chat;
    }

    return chat;
  }

  @override
  Future<void> load({
    required int limit,
    required int offset,
  }) async {
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

  Chat _loadChat(ChatID chatID) {
    switch (_rand.nextInt(4)) {
      case 0:
        return Chat.monologue(
          id: chatID,
          title: 'Monologue $chatID',
        );
      case 1:
        return Chat.dialogue(
          id: chatID,
          unreadAmount: 0,
          partnerID: UserID.fromString('user ${_rand.nextInt(1000)}'),
        );
      default:
        return Chat.group(
          id: chatID,
          unreadAmount: 0,
          ownerID: UserID.fromString('1'),
          title: 'Group $chatID',
          participantsAmount: 1,
        );
    }
  }
}
