import '../entity/chat/chat.dart';

abstract class ChatListService {
  void init();

  void dispose();

  Future<List<Chat>> load({
    required int limit,
    required int offset,
  });
}
