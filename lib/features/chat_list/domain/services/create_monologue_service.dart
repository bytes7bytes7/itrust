import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/domain/dto/new_media/new_media.dart';
import '../../../common/domain/entities/chat/chat.dart';
import '../../../common/domain/services/keep_fresh_token_service.dart';
import '../dto/dto.dart';
import '../providers/create_monologue_provider.dart';

@singleton
class CreateMonologueService {
  const CreateMonologueService({
    required KeepFreshTokenService keepFreshTokenService,
    required CreateMonologueProvider createMonologueProvider,
    required ChatRepository chatRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _createMonologueProvider = createMonologueProvider,
        _chatRepository = chatRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final CreateMonologueProvider _createMonologueProvider;
  final ChatRepository _chatRepository;

  Future<Chat> createChat({
    required String title,
    String? iconName,
    NewMedia? image,
  }) async {
    try {
      final request = CreateMonologueChatRequest(
        title: title,
        iconName: iconName,
        image: image,
      );

      final response = await _keepFreshTokenService.request(
        () => _createMonologueProvider.createChat(
          request: request,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: implement
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
