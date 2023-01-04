import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/application/persistence/message_repository.dart';
import '../../../common/application/persistence/search_repository.dart';
import '../../../common/domain/domain.dart';

@test
@Singleton(as: SearchRepository<Message>)
class TestMessageSearchRepository implements SearchRepository<Message> {
  TestMessageSearchRepository({
    required MessageRepository messageRepository,
  }) : _messageRepository = messageRepository;

  final MessageRepository _messageRepository;

  @override
  Future<List<Message>> load({
    required int limit,
    required int offset,
    required String query,
  }) async {
    final messages = await _genMessages(limit: limit);

    await _messageRepository.addAllByChatID(chatID, messages);

    return messages;
  }

  Future<List<Message>> _genMessages({
    required int limit,
  }) {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        return List.generate(
          limit,
          (index) {
            final sender = _rand.nextBool()
                ? _sender
                : _rand.nextBool()
                    ? _me
                    : null;
            return Message(
              id: '$index',
              chatID: 'chatID',
              sender: sender,
              text: _rand.nextBool() && sender != null
                  ? _randString(_rand.nextInt(20) + 8)
                  : '',
              mediaUrls: [],
              sentAt: _randDateTime(),
              modifiedAt: _rand.nextBool() ? _randDateTime() : null,
              willBeBurntAt: _rand.nextBool() ? _randDateTime() : null,
              isRead: _rand.nextBool(),
            );
          },
        );
      },
    );
  }

  final _rand = Random();

  final _sender = const User(
    id: 'senderID',
    name: 'Tomas White',
    avatarUrls: [],
  );

  final _me = const User(
    id: 'myID',
    name: 'bytes7 bytes7',
    avatarUrls: [],
  );

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
