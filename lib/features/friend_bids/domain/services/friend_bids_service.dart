import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/domain/domain.dart';
import '../providers/friend_bids_provider.dart';
import '../value_objects/friend_bids_amount/friend_bids_amount.dart';

@singleton
class FriendBidsService {
  const FriendBidsService({
    required KeepFreshTokenService keepFreshTokenService,
    required FriendBidsProvider friendBidsProvider,
    required EndUserRepository endUserRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _friendBidsProvider = friendBidsProvider,
        _endUserRepository = endUserRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final FriendBidsProvider _friendBidsProvider;
  final EndUserRepository _endUserRepository;

  Future<FriendBidsAmount> getFriendBidsAmount() async {
    try {
      final response = await _keepFreshTokenService.request(
        _friendBidsProvider.getFriendBidsAmount,
      );

      return await response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) async {
          return FriendBidsAmount(
            inboxAmount: r.inboxAmount,
            outboxAmount: r.outboxAmount,
          );
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<List<User>> getInboxFriendBids({
    UserID? lastUserID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _friendBidsProvider.getInboxBids(
          lastUserID: lastUserID?.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: check exception title
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
      // TODO: no internet
      rethrow;
    }
  }

  Future<List<User>> getOutboxFriendBids({
    UserID? lastUserID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _friendBidsProvider.getOutboxBids(
          lastUserID: lastUserID?.str,
        ),
      );

      return await response.value.fold(
        (l) {
          // TODO: check exception title
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
      // TODO: no internet
      rethrow;
    }
  }
}
