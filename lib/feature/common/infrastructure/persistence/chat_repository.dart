import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../application/persistence/chat_repository.dart';
import '../../domain/domain.dart';

@test
@Singleton(as: ChatRepository)
class TestChatRepository implements ChatRepository {
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

  @override
  FutureOr<Chat> getByID(ChatID id) {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        final type = _rand.nextBool() ? ChatType.group : ChatType.dialog;
        final dialogOnlineStatuses = [
          const IsOnlineStatus(),
          const HiddenOnlineStatus(),
          LastSeenOnlineStatus(
            dateTime: _randDateTime(),
          ),
        ];
        final unreadAmount = _rand.nextInt(2000);

        return Chat(
          id: id,
          title: _randString(_rand.nextInt(20) + 5),
          chatType: type,
          onlineStatus: type == ChatType.group
              ? const NoOnlineStatus()
              : dialogOnlineStatuses[_rand.nextInt(
                  dialogOnlineStatuses.length,
                )],
          unreadAmount: unreadAmount,
          avatarUrl: _rand.nextBool()
              ? 'https://i0.wp.com/evanstonroundtable.com/wp-content/uploads/2022/05/Lushina-scaled-e1652827479814.jpg?fit=1200%2C900&ssl=1'
              : null,
          lastMessage: _rand.nextInt(5) == 0
              ? null
              : Message(
                  id: 'message',
                  chatID: id,
                  sender: _rand.nextBool()
                      ? User(
                          id: _randString(8),
                          name: _randString(_rand.nextInt(15) + 5),
                          avatarUrls: [],
                        )
                      : null,
                  text: _randString(_rand.nextInt(40) + 5),
                  mediaUrls: [],
                  sentAt: _randDateTime(),
                  modifiedAt: _rand.nextBool() ? _randDateTime() : null,
                  willBeBurntAt: _rand.nextBool() ? _randDateTime() : null,
                  isRead: unreadAmount == 0,
                ),
        );
      },
    );
  }
}
