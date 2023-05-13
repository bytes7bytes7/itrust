import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/entities/entities.dart';
import '../../features/common/domain/value_objects/value_objects.dart';
import '../interfaces/message_repository.dart';

@dev
@Singleton(as: MessageRepository)
class DevMessageRepository implements MessageRepository {
  final _storage = HashMap<MessageID, Message>();

  @override
  Future<Message?> getByID(MessageID messageID) async {
    return _storage[messageID];
  }

  @override
  Future<void> addOrUpdate(Message message) async {
    _storage[message.id] = message;
  }

  @override
  Future<void> addAllOrUpdate(List<Message> messages) async {
    for (final message in messages) {
      _storage[message.id] = message;
    }
  }
}
