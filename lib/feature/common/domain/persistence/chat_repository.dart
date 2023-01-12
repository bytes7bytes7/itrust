import '../entity/entity.dart';
import '../value_object/value_object.dart';

abstract class ChatRepository {
  /// Stream of specific chat.
  ///
  /// It watches updates that come from server.
  Stream<Chat> onChatUpdate(ChatID chatID);

  /// The stream contains all loaded chats.
  ///
  /// It watches updates that come from server.
  Stream<List<Chat>> get onAllChatsUpdate;

  Future<Chat?> getByID(ChatID chatID);

  Future<void> load({
    required int limit,
    required int offset,
  });

  void add(Chat chat);

  void addAll(List<Chat> chats);
}
