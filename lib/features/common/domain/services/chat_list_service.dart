import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../entities/entities.dart';
import '../providers/chat_list_provider.dart';
import '../value_objects/chat_id/chat_id.dart';
import 'keep_fresh_token_service.dart';

@singleton
class ChatListService {
  const ChatListService({
    required KeepFreshTokenService keepFreshTokenService,
    required ChatListProvider chatListProvider,
    required ChatRepository chatRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _chatListProvider = chatListProvider,
        _chatRepository = chatRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final ChatListProvider _chatListProvider;
  final ChatRepository _chatRepository;

  void init() {
    // TODO: implement
  }

  void dispose() {
    // TODO: implement
  }

  Future<List<Chat>> loadChats({
    ChatID? lastChatID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _chatListProvider.getChats(
          lastChatID: lastChatID?.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) async {
          for (final c in r.chats) {
            await _chatRepository.addOrUpdate(c);
          }

          return r.chats;
        },
      );
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }
}
