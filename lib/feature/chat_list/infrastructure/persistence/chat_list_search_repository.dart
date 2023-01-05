import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/application/persistence/chat_repository.dart';
import '../../../common/application/persistence/search_repository.dart';
import '../../../common/domain/domain.dart';

@test
@Singleton(as: SearchRepository<Chat>)
class TestChatListSearchRepository implements SearchRepository<Chat> {
  TestChatListSearchRepository({
    required ChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  final ChatRepository _chatRepository;

  @override
  Future<List<Chat>> load({
    required int limit,
    required int offset,
    required String query,
  }) async {
    final chats = await _genChats(limit: limit);

    _chatRepository.addAll(chats);

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

  UserID? _genSenderID(ChatType chatType, UserID partnerID) {
    if (chatType == ChatType.dialog) {
      switch (_rand.nextInt(3)) {
        case 0:
          return partnerID;
        case 1:
          return _myID;
        default:
          return null;
      }
    }

    switch (_rand.nextInt(4)) {
      case 0:
        return partnerID;
      case 1:
        return _myID;
      case 2:
        return UserID(_randString(8));
      default:
        return null;
    }
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
            final partnerID = UserID('partner $index');
            final type = _rand.nextBool() ? ChatType.group : ChatType.dialog;
            final title = _randString(_rand.nextInt(20) + 5);
            final online = _rand.nextBool();
            final unreadAmount = _rand.nextInt(2000);

            return Chat(
              id: chatID,
              title: title,
              chatType: type,
              partner: type == ChatType.dialog
                  ? User(
                      id: partnerID,
                      name: type == ChatType.dialog
                          ? title
                          : _randString(_rand.nextInt(20) + 4),
                      avatarUrls: [],
                      online: online,
                      lastSeen: !online
                          ? _rand.nextBool()
                              ? _randDateTime()
                              : null
                          : null,
                    )
                  : null,
              unreadAmount: unreadAmount,
              avatarUrl: _rand.nextBool()
                  ? 'https://i0.wp.com/evanstonroundtable.com/wp-content/uploads/2022/05/Lushina-scaled-e1652827479814.jpg?fit=1200%2C900&ssl=1'
                  : null,
              messages: _rand.nextInt(5) == 0
                  ? []
                  : [
                      Message(
                        id: MessageID('message $index'),
                        chatID: chatID,
                        senderID: _genSenderID(type, partnerID),
                        text: _randString(_rand.nextInt(40) + 5),
                        mediaUrls: [],
                        sentAt: _randDateTime(),
                        modifiedAt: _rand.nextBool() ? _randDateTime() : null,
                        willBeBurntAt:
                            _rand.nextBool() ? _randDateTime() : null,
                        isRead: unreadAmount == 0,
                      ),
                    ],
            );
          },
        );
      },
    );
  }
}
