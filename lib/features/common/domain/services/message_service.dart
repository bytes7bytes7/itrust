import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../dto/new_media/new_media.dart';
import '../dto/send_message_request/send_message_request.dart';
import '../entities/message/message.dart';
import '../providers/message_provider.dart';
import '../value_objects/chat_id/chat_id.dart';
import '../value_objects/message_id/message_id.dart';
import 'keep_fresh_token_service.dart';

@singleton
class MessageService {
  const MessageService({
    required KeepFreshTokenService keepFreshTokenService,
    required MessageProvider messageProvider,
    required MessageRepository messageRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _messageProvider = messageProvider,
        _messageRepository = messageRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final MessageProvider _messageProvider;
  final MessageRepository _messageRepository;

  Future<Message?> getMessageByID({
    required ChatID chatID,
    required MessageID messageID,
    bool cached = true,
  }) async {
    if (cached) {
      final message = await _messageRepository.getByID(messageID);

      if (message != null) {
        return message;
      }
    }

    try {
      final response = await _keepFreshTokenService.request(
        () => _messageProvider.getMessage(
          chatID: chatID.str,
          messageID: messageID.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) async {
          await _messageRepository.addOrUpdate(r.message);

          return r.message;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  // TODO: add `cached` in all load N of something functions
  Future<List<Message>> loadMessages({
    required ChatID chatID,
    MessageID? lastMessageID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _messageProvider.getMessages(
          chatID: chatID.str,
          lastMessageID: lastMessageID?.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) async {
          for (final m in r.messages) {
            await _messageRepository.addOrUpdate(m);
          }

          return r.messages;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<Message> sendMessage({
    required ChatID chatID,
    required String text,
    List<NewMedia> media = const [],
    int? willBeBurntAfterSec,
  }) async {
    try {
      final request = SendMessageRequest(
        chatID: chatID.str,
        text: text,
        media: media,
        willBeBurntAfterSec: willBeBurntAfterSec,
      );

      final response = await _keepFreshTokenService.request(
        () => _messageProvider.sendMessage(
          request: request,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) async {
          await _messageRepository.addOrUpdate(r.message);

          return r.message;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }
}
