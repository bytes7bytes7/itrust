import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/domain/domain.dart';

@test
@Singleton(as: SearchRepository<Chat>)
class TestChatListSearchRepository implements SearchRepository<Chat> {
  @override
  Future<List<Chat>> load({
    required int limit,
    required int offset,
    required String query,
  }) {
    return _genChats(limit: limit);
  }

  final _rand = Random();

  final _alpha = 'qwertyuiopasdfghjklzxcvbnm';

  String _randString(int length) {
    final buffer = StringBuffer();

    for (var i = 0; i < length; i++) {
      buffer.write(_alpha[_rand.nextInt(_alpha.length)]);
    }

    return buffer.toString();
  }

  Future<List<Chat>> _genChats({
    required int limit,
  }) {
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        return List.generate(
          limit,
          (index) {
            final chatID = ChatID('chat $index');
            final title = _randString(_rand.nextInt(20) + 5);
            final unreadAmount = _rand.nextBool() ? _rand.nextInt(2000) : 0;

            switch (_rand.nextInt(3)) {
              case 0:
                return Chat.monologue(
                  id: chatID,
                  unreadAmount: unreadAmount,
                  title: title,
                  lastMessageID: MessageID('${_rand.nextInt(1000)}'),
                );
              case 1:
                final partnerID = UserID('partner $index');

                return Chat.dialogue(
                  id: chatID,
                  unreadAmount: unreadAmount,
                  partnerID: partnerID,
                  lastMessageID: MessageID('${_rand.nextInt(1000)}'),
                );
              default:
                return Chat.group(
                  id: chatID,
                  unreadAmount: unreadAmount,
                  title: title,
                  lastMessageID: MessageID('${_rand.nextInt(1000)}'),
                );
            }
          },
        );
      },
    );
  }
}
