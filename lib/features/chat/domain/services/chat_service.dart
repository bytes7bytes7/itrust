import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/domain/services/keep_fresh_token_service.dart';
import '../../../common/domain/value_objects/chat_id/chat_id.dart';
import '../providers/chat_listen_provider.dart';
import '../value_objects/message_event/message_event.dart';

@singleton
class ChatService {
  const ChatService({
    required KeepFreshTokenService keepFreshTokenService,
    required ChatListenProvider chatListenProvider,
    required MessageRepository messageRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _chatListenProvider = chatListenProvider,
        _messageRepository = messageRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final ChatListenProvider _chatListenProvider;
  final MessageRepository _messageRepository;

  Future<Stream<MessageEvent>> listenMessageEvents({
    required ChatID chatID,
  }) async {
    try {
      final stream = await _keepFreshTokenService.listen(
        () => _chatListenProvider.listenMessageEvents(chatID: chatID.str),
      );

      return stream.asyncMap((event) {
        return event.value.fold(
          (l) async {
            // TODO: check exception title
            throw Exception('Listen chat events error');
          },
          (r) async {
            for (final c in r.created) {
              await _messageRepository.addOrUpdate(c);
            }

            for (final c in r.updated) {
              await _messageRepository.addOrUpdate(c);
            }

            return MessageEvent(
              created: r.created,
              deleted: r.deleted,
              updated: r.updated,
            );
          },
        );
      });
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }
}
