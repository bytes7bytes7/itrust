import '../../features/common/domain/entities/entities.dart';
import '../../features/common/domain/value_objects/value_objects.dart';

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

  Future<void> addOrUpdate(Chat chat);

  Future<void> addAllOrUpdate(List<Chat> chats);
}
