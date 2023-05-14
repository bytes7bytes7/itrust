import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/domain/dto/new_media/new_media.dart';
import '../../../common/domain/entities/entities.dart';
import '../../../common/domain/services/keep_fresh_token_service.dart';
import '../../../common/domain/value_objects/value_objects.dart';
import '../dto/dto.dart';
import '../providers/create_chat_provider.dart';

@singleton
class CreateChatService {
  const CreateChatService({
    required KeepFreshTokenService keepFreshTokenService,
    required CreateChatProvider createChatProvider,
    required ChatRepository chatRepository,
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _createChatProvider = createChatProvider,
        _chatRepository = chatRepository,
        _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final CreateChatProvider _createChatProvider;
  final ChatRepository _chatRepository;
  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;

  Future<Chat> createMonologue({
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
        () => _createChatProvider.createMonologue(
          request: request,
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

  Future<List<User>> getChatPartners({
    UserID? lastUserID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _createChatProvider.getChatPartners(
          lastUserID: lastUserID?.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) async {
          for (final user in r.users) {
            if (user is EndUser) {
              await _endUserRepository.addOrUpdate(user: user);
            } else if (user is StaffUser) {
              await _staffUserRepository.addOrUpdate(user: user);
            }
          }

          return r.users;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<Chat> createGroup({
    required String title,
    required List<UserID> guestIDs,
    NewMedia? image,
  }) async {
    try {
      final request = CreateGroupChatRequest(
        title: title,
        guestIDs: guestIDs,
        image: image,
      );

      final response = await _keepFreshTokenService.request(
        () => _createChatProvider.createGroup(
          request: request,
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
