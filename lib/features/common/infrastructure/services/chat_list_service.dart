import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

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
                  picUrl: _rand.nextBool()
                      ? _images[_rand.nextInt(_images.length)]
                      : null,
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
                  picUrl: _rand.nextBool()
                      ? _images[_rand.nextInt(_images.length)]
                      : null,
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

  final _images = [
    'https://static.vecteezy.com/packs/media/vectors/term-bg-1-3d6355ab.jpg',
    'https://images.unsplash.com/photo-1528722828814-77b9b83aafb2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80',
    'https://www.whatsappimages.in/wp-content/uploads/2022/03/Beautiful-Rare-Whatsapp-Dp-Profile-Images-pictures-free-hd.jpg',
    'https://media.istockphoto.com/id/952087324/photo/beauty-fashion-model-girl-with-colorful-dyed-hair.jpg?s=612x612&w=0&k=20&c=sefYM7Cjx_S877d6-BpBCfMTcRnHeYKHe9PKGNkoCYA=',
    'https://images.ctfassets.net/hrltx12pl8hq/qGOnNvgfJIe2MytFdIcTQ/429dd7e2cb176f93bf9b21a8f89edc77/Images.jpg',
  ];
}
