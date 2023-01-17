import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../domain/entity/entity.dart';
import '../../domain/service/chat_list_service.dart';
import '../../domain/value_object/value_object.dart';

@test
@LazySingleton(as: ChatListService)
class TestChatListService implements ChatListService {
  final _rand = Random();

  @override
  @postConstruct
  void init() {}

  @override
  @disposeMethod
  void dispose() {}

  @override
  Future<List<Chat>> load({
    required int limit,
    required int offset,
  }) {
    return Future.delayed(
      Duration(seconds: _rand.nextInt(3) + 1),
      () {
        return List.generate(
          _rand.nextInt(20) + 4,
          (index) {
            switch (_rand.nextInt(3)) {
              case 0:
                return Chat.monologue(
                  id: ChatID('chat $index'),
                  unreadAmount: _rand.nextBool() ? _rand.nextInt(1000000) : 0,
                  title: _randString(_rand.nextInt(10) + 5),
                  lastMessageID: MessageID('msg $index'),
                );
              case 1:
                return Chat.dialogue(
                  id: ChatID('chat $index'),
                  unreadAmount: _rand.nextBool() ? _rand.nextInt(1000000) : 0,
                  partnerID: UserID('user $index'),
                  lastMessageID: MessageID('msg $index'),
                );
              default:
                return Chat.group(
                  id: ChatID('chat $index'),
                  unreadAmount: _rand.nextBool() ? _rand.nextInt(1000000) : 0,
                  title: _randString(_rand.nextInt(10) + 5),
                  lastMessageID: MessageID('msg $index'),
                );
            }
          },
        );
      },
    );
  }

  final _alpha = 'qwertyuiopasdfghjklzxcvbnm ';

  String _randString(int length) {
    final buffer = StringBuffer();

    for (var i = 0; i < length; i++) {
      buffer.write(_alpha[_rand.nextInt(_alpha.length)]);
    }

    return buffer.toString();
  }
}
