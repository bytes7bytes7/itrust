import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../entities/entities.dart';
import '../providers/chat_list_listen_provider.dart';
import '../providers/chat_list_provider.dart';
import '../value_objects/chat_event/chat_event.dart';
import '../value_objects/chat_id/chat_id.dart';
import 'keep_fresh_token_service.dart';

@singleton
class ChatListService {
  const ChatListService({
    required KeepFreshTokenService keepFreshTokenService,
    required ChatListProvider chatListProvider,
    required ChatListListenProvider chatListListenProvider,
    required ChatRepository chatRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _chatListProvider = chatListProvider,
        _chatListListenProvider = chatListListenProvider,
        _chatRepository = chatRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final ChatListProvider _chatListProvider;
  final ChatListListenProvider _chatListListenProvider;
  final ChatRepository _chatRepository;

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
          // TODO: check exception title
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
      // TODO: no internet
      rethrow;
    }
  }

  Future<Stream<ChatEvent>> listenChatEvents() async {
    try {
      final stream = await _keepFreshTokenService.listen(
        _chatListListenProvider.listenChatEvents,
      );

      return stream.asyncMap((event) {
        return event.value.fold(
          (l) async {
            // TODO: check exception title
            throw Exception('Listen chat events error');
          },
          (r) async {
            for (final c in r.created) {
              await _chatRepository.addOrUpdate(c);
            }

            for (final c in r.updated) {
              await _chatRepository.addOrUpdate(c);
            }

            return ChatEvent(
              created: r.created,
              deleted: r.deleted,
              updated: r.updated,
              lastMessageID: {
                for (final e in r.lastMessage) e.chatID: e.messageID
              },
            );
          },
        );
      });
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<Chat> getChat({
    required ChatID id,
    bool cached = true,
  }) async {
    if (cached) {
      final chat = await _chatRepository.getByID(id);

      if (chat != null) {
        return chat;
      }
    }

    try {
      final response = await _keepFreshTokenService.request(
        () => _chatListProvider.getChat(
          id: id.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) async {
          await _chatRepository.addOrUpdate(r.chat);

          return r.chat;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }
}
