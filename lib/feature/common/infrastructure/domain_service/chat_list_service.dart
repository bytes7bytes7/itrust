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

  // ignore: avoid_void_async
  void init() async {
    var b = true;
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: _rand.nextInt(5)), () {
        late ChatsEvent value;
        switch (_rand.nextInt(3)) {
          case 0:
            value = NewChatsEvent(
              Map.fromEntries(
                List.generate(
                  _rand.nextInt(5) + 1,
                  (index) {
                    return MapEntry(
                      _rand.nextInt(5),
                      _chats[_rand.nextInt(_chats.length)].copyWith(
                        unreadAmount: _rand.nextInt(10),
                      ),
                    );
                  },
                ),
              ),
            );
            break;
          case 1:
            value = UpdateChatsEvent(
              Map.fromEntries(
                List.generate(
                  _rand.nextInt(5) + 1,
                  (index) {
                    return MapEntry(
                      _rand.nextInt(5),
                      _chats[_rand.nextInt(_chats.length)].copyWith(
                        unreadAmount: _rand.nextInt(10),
                      ),
                    );
                  },
                ),
              ),
            );
            break;
          default:
            value = DeleteChatsEvent(
              List.generate(
                _rand.nextInt(_chats.length),
                (index) {
                  return _chats[_rand.nextInt(_chats.length)].id;
                },
              ),
            );
        }

        _controller.add(value);
        b = !b;
      });
    }
  }

  void dispose() {
    _controller.close();
  }
}
