import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../application/persistence/chat_repository.dart';
import '../../domain/domain.dart';

@test
@Singleton(as: ChatRepository)
class TestChatRepository implements ChatRepository {
  final _chats = <ChatID, Chat>{};

  @override
  int get length => _chats.length;

  @override
  FutureOr<Chat> getByID(ChatID id) async {
    final loadedChat = _chats[id];

    if (loadedChat != null) {
      return loadedChat;
    }

    final newChat = await _genChat(id);
    _chats[newChat.id] = newChat;

    return newChat;
  }

  @override
  void addAll(List<Chat> chats) {
    for (final c in chats) {
      _chats[c.id] = c;
    }
  }

  late final _rand = Random();

  final _alpha = 'qwertyuiopasdfghjklzxcvbnm';

  String _randString(int length) {
    final buffer = StringBuffer();

    for (var i = 0; i < length; i++) {
      buffer.write(_alpha[_rand.nextInt(_alpha.length)]);
    }

    return buffer.toString();
  }

  DateTime _randDateTime() {
    return DateTime(
      _rand.nextInt(2) + 2022,
      _rand.nextInt(12) + 1,
      _rand.nextInt(28) + 1,
      _rand.nextInt(24),
      _rand.nextInt(60),
      _rand.nextInt(60),
    );
  }

  Future<Chat> _genChat(ChatID id) async {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        final type = _rand.nextBool() ? ChatType.group : ChatType.dialog;
        final unreadAmount = _rand.nextInt(2000);

        return Chat(
          id: id,
          title: _randString(_rand.nextInt(20) + 5),
          chatType: type,
          unreadAmount: unreadAmount,
          avatarUrl: _rand.nextBool()
              ? 'https://i0.wp.com/evanstonroundtable.com/wp-content/uploads/2022/05/Lushina-scaled-e1652827479814.jpg?fit=1200%2C900&ssl=1'
              : null,
          messages: _rand.nextInt(5) == 0
              ? []
              : [
                  Message(
                    id: const MessageID('message'),
                    chatID: id,
                    senderID: _rand.nextBool() ? UserID(_randString(8)) : null,
                    text: _randString(_rand.nextInt(40) + 5),
                    mediaUrls: [],
                    sentAt: _randDateTime(),
                    modifiedAt: _rand.nextBool() ? _randDateTime() : null,
                    willBeBurntAt: _rand.nextBool() ? _randDateTime() : null,
                    isRead: unreadAmount == 0,
                  ),
                ],
        );
      },
    );
  }
}
