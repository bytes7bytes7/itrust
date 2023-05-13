import '../../features/common/domain/entities/entities.dart';
import '../../features/common/domain/value_objects/value_objects.dart';

abstract class MessageRepository {
  Future<Message?> getByID(MessageID messageID);

  Future<void> addOrUpdate(Message message);

  Future<void> addAllOrUpdate(List<Message> messages);
}
