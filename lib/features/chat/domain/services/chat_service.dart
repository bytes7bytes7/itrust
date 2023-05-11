import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/domain/entities/entities.dart';
import '../../../common/domain/services/keep_fresh_token_service.dart';
import '../../../common/domain/value_objects/value_objects.dart';
import '../providers/chat_provider.dart';

@singleton
class ChatService {
  const ChatService({
    required KeepFreshTokenService keepFreshTokenService,
    required ChatProvider chatProvider,
    required ChatRepository chatRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _chatProvider = chatProvider,
        _chatRepository = chatRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final ChatProvider _chatProvider;
  final ChatRepository _chatRepository;

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
        () => _chatProvider.getChat(
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
