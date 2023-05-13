import '../../features/common/domain/entities/entities.dart';
import '../../features/common/domain/value_objects/value_objects.dart';

abstract class ChatRepository {
  Future<Chat?> getByID(ChatID chatID);

  Future<void> addOrUpdate(Chat chat);

  Future<void> addAllOrUpdate(List<Chat> chats);
}
