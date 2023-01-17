import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

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

class LongPolling<T> {
  LongPolling(this.callback);

  final FutureOr<T> Function() callback;

  Stream<T> get stream => _controller.stream;

  final _controller = StreamController<T>.broadcast();
  var _working = false;
  var _isPolling = false;

  void start() {
    _working = true;
    _polling();
  }

  void stop() {
    _working = false;
  }

  void dispose() {
    _controller.close();
  }

  Future<void> _polling() async {
    if (_isPolling) {
      return;
    }

    _isPolling = true;

    while (_working) {
      try {
        final response = await callback();
        _controller.add(response);
      } catch (e) {
        //
      }
    }

    _isPolling = false;
  }
}

@test
@LazySingleton(as: ChatRepository)
class TestChatRepository implements ChatRepository {
  final _storage = <ChatID, Chat>{};
  final _rand = Random();
  LongPolling<ChatListResponse> _polling = LongPolling<ChatListResponse>(
    () => const ChatListResponse.empty(),
  );

  @override
  Stream<Chat> onChatUpdate(ChatID chatID) {
    throw UnimplementedError();
  }

  @override
  Stream<List<Chat>> get onAllChatsUpdate => _polling.stream.map((event) {
        return <Chat>[];
      }).where((list) => list.isNotEmpty);

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
    _polling
      ..stop()
      ..dispose();

    _polling = LongPolling(() => const ChatListResponse.empty());
  }

  @override
  void add(Chat chat) {
    _storage[chat.id] = chat;
  }

  @override
  void addAll(List<Chat> chats) {
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
          unreadAmount: 0,
        );
      case 1:
        return Chat.dialogue(
          id: chatID,
          unreadAmount: 0,
          partnerID: UserID('user ${_rand.nextInt(1000)}'),
        );
      default:
        return Chat.group(
          id: chatID,
          unreadAmount: 0,
          title: 'Group $chatID',
        );
    }
  }
}