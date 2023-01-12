import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../domain/persistence/chat_repository.dart';
import '../../domain/service/chat_list_service.dart';
import '../../domain/service/chats_event.dart';

@LazySingleton(as: ChatListService)
class ProdChatListService implements ChatListService {
  ProdChatListService({
    required ChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  final ChatRepository _chatRepository;

  @override
  Stream<ChatsEvent> get chatsEvents => const Stream.empty();

  @override
  @postConstruct
  void init() {}

  @override
  @disposeMethod
  void dispose() {}

  @override
  Future<void> load({
    required int limit,
    required int offset,
  }) async {
    await _chatRepository.load(limit: limit, offset: offset);
  }
}
