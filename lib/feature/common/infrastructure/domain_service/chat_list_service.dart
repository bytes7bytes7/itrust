import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';
import '../../domain/service/chat_list_service.dart';
import '../../domain/service/chats_event.dart';

@test
@Singleton(as: ChatListService)
class TestChatListService implements ChatListService {
  @override
  Stream<ChatsEvent> get chatsEvents => _controller.stream;

  final _rand = Random();
  final _controller = StreamController<ChatsEvent>.broadcast();
  final _chats = List.generate(10, (index) {
    return Chat.monologue(
      id: ChatID('$index'),
      title: 'Chat $index',
      unreadAmount: 0,
    );
  });

  @PostConstruct()
  // ignore: avoid_void_async
  void init() async {
    var b = true;
    while (true) {
      await Future.delayed(
        Duration(seconds: _rand.nextInt(5)),
        () {
          _chats.shuffle();
          late ChatsEvent value;

          switch (_rand.nextInt(2)) {
            case 0:
              value = UpdateChatsEvent(
                List.generate(
                  _rand.nextInt(_chats.length),
                  (index) {
                    return _chats[index].copyWith(
                      unreadAmount: _rand.nextInt(10),
                    );
                  },
                ),
              );
              break;
            default:
              value = DeleteChatsEvent(
                List.generate(
                  _rand.nextInt(_chats.length),
                  (index) {
                    return _chats[index].id;
                  },
                ),
              );
          }

          _controller.add(value);
          b = !b;
        },
      );
    }
  }

  @override
  @disposeMethod
  void dispose() {
    _controller.close();
  }
}
