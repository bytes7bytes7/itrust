import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../application/persistence/chat_repository.dart';
import '../../application/persistence/message_repository.dart';
import '../../domain/domain.dart';

@test
@Singleton(as: MessageRepository)
class TestMessageRepository implements MessageRepository {
  TestMessageRepository({
    required ChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  final ChatRepository _chatRepository;

  @override
  FutureOr<List<Message>> getAllByChatID(ChatID chatID) async {
    final chat = await _chatRepository.getByID(chatID);

    return chat.messages;
  }

  @override
  Future<void> addAllByChatID(ChatID chatID, List<Message> messages) async {
    final chat = await _chatRepository.getByID(chatID);

    // TODO: finish
  }
}
