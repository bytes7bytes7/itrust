import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/domain/domain.dart';
import '../../../common/domain/persistence/search_repository.dart';

@test
@Singleton(as: SearchRepository<Chat>)
class TestChatListSearchRepository implements SearchRepository<Chat> {


  @override
  Future<List<Chat>> load({
    required int limit,
    required int offset,
    required String query,
  }) async {
    final chats = await _genChats(limit: limit);


    return chats;
  }

  final _rand = Random();

  final _alpha = 'qwertyuiopasdfghjklzxcvbnm';

  final _myID = const UserID('me');

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

  Message _genMessage(UserID? senderID, ChatID chatID) {
    final id = MessageID('${_rand.nextInt(1000)}');
    final sentAt = _randDateTime();

    if (senderID == null) {
      return Message.info(
        id: id,
        chatID: chatID,
        sentAt: sentAt,
        readBy: [],
        markUp: 'mark up ${_rand.nextInt(1000)}',
        markUpData: ['mark up date ${_rand.nextInt(1000)}'],
      );
    }

    return Message.user(
      id: id,
      chatID: chatID,
      sentAt: sentAt,
      readBy: [],
      text: 'text ${_rand.nextInt(1000)}',
      mediaUrls: [],
      senderID: senderID,
    );
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
                  lastMessage: _genMessage(_myID, chatID),
                );
              case 1:
                final partnerID = UserID('partner $index');

                Message? message;
                switch (_rand.nextInt(3)) {
                  case 0:
                    message = _genMessage(_myID, chatID);
                    break;
                  case 1:
                    message = _genMessage(partnerID, chatID);
                    break;
                  default:
                    message = _genMessage(null, chatID);
                }

                if (unreadAmount == 0) {
                  message = _rand.nextBool() ? message : null;
                }

                return Chat.dialogue(
                  id: chatID,
                  unreadAmount: unreadAmount,
                  partnerID: partnerID,
                  lastMessage: message,
                );
              default:
                Message? message;
                switch (_rand.nextInt(3)) {
                  case 0:
                    message = _genMessage(_myID, chatID);
                    break;
                  case 1:
                    message = _genMessage(
                      UserID('user ${_rand.nextInt(1000)}'),
                      chatID,
                    );
                    break;
                  default:
                    message = _genMessage(null, chatID);
                }

                if (unreadAmount == 0) {
                  message = _rand.nextBool() ? message : null;
                }

                return Chat.group(
                  id: chatID,
                  unreadAmount: unreadAmount,
                  title: title,
                  lastMessage: message,
                );
            }
          },
        );
      },
    );
  }
}
