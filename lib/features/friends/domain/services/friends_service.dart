import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/end_user_repository.dart';
import '../../../common/domain/entities/entities.dart';
import '../../../common/domain/services/keep_fresh_token_service.dart';
import '../../../common/domain/value_objects/value_objects.dart';
import '../providers/friends_provider.dart';

@singleton
class FriendsService {
  const FriendsService({
    required KeepFreshTokenService keepFreshTokenService,
    required FriendsProvider friendsProvider,
    required EndUserRepository endUserRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _friendsProvider = friendsProvider,
        _endUserRepository = endUserRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final FriendsProvider _friendsProvider;
  final EndUserRepository _endUserRepository;

  Future<List<EndUser>> getFriends({
    required UserID friendsTo,
    UserID? lastUserID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _friendsProvider.getFriends(
          friendsTo: friendsTo.str,
          lastUserID: lastUserID?.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) async {
          for (final u in r.users) {
            await _endUserRepository.addOrUpdate(user: u);
          }

          return r.users;
        },
      );
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }
}
