import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/domain/domain.dart';

@test
@Singleton(as: SearchRepository<Message>)
class TestMessageSearchRepository implements SearchRepository<Message> {
  @override
  Future<List<Message>> load({
    required int limit,
    required int offset,
    required String query,
  }) async {
    final messages = await _genMessages(limit: limit);

    // TODO: solve this
    // await _messageRepository.addAllByChatID(chatID, messages);

    return messages;
  }

  Future<List<Message>> _genMessages({
    required int limit,
  }) {
    const chatID = ChatID('chatID');

    return Future.delayed(
      const Duration(seconds: 2),
      () {
        return List.generate(
          limit,
          (index) {
            if (_rand.nextBool()) {
              return Message.info(
                id: MessageID('$index'),
                chatID: chatID,
                sentAt: _randDateTime(),
                readBy: [const UserID('some id')],
                markUp: 'some markup',
                markUpData: ['markup data'],
                willBeBurntAt: _rand.nextBool() ? _randDateTime() : null,
              );
            }

            return Message.user(
              id: MessageID('$index'),
              chatID: const ChatID('chatID'),
              senderID: _senderID,
              text: _rand.nextBool() ? _randString(_rand.nextInt(20) + 8) : '',
              mediaUrls: [],
              readBy: [const UserID('some id')],
              sentAt: _randDateTime(),
              modifiedAt: _rand.nextBool() ? _randDateTime() : null,
              willBeBurntAt: _rand.nextBool() ? _randDateTime() : null,
            );
          },
        );
      },
    );
  }

  final _rand = Random();

  final _senderID = const UserID('senderID');

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
}
