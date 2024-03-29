import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/domain/entities/entities.dart';
import '../../../common/domain/services/keep_fresh_token_service.dart';
import '../../../common/domain/value_objects/value_objects.dart';
import '../providers/people_provider.dart';
import '../value_objects/people_amount/people_amount.dart';

@singleton
class PeopleService {
  const PeopleService({
    required KeepFreshTokenService keepFreshTokenService,
    required PeopleProvider peopleProvider,
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _peopleProvider = peopleProvider,
        _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final PeopleProvider _peopleProvider;
  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;

  Future<PeopleAmount> getPeopleAmount() async {
    try {
      final response = await _keepFreshTokenService.request(
        _peopleProvider.getPeopleAmount,
      );

      return await response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) async {
          return PeopleAmount(
            allUsersAmount: r.allUsersAmount,
            friendsAmount: r.friendsAmount,
            subscribersAmount: r.subscribersAmount,
            subscriptionsAmount: r.subscriptionsAmount,
          );
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<List<User>> getAllUsers({
    UserID? lastUserID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _peopleProvider.getAllUsers(
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
            if (u is EndUser) {
              await _endUserRepository.addOrUpdate(user: u);
            } else if (u is StaffUser) {
              await _staffUserRepository.addOrUpdate(user: u);
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

  Future<List<EndUser>> getFriends({
    required UserID friendsTo,
    UserID? lastUserID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _peopleProvider.getFriends(
          userID: friendsTo.str,
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

  Future<List<EndUser>> getSubscribers({
    required UserID subscribersOf,
    UserID? lastUserID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _peopleProvider.getSubscribers(
          userID: subscribersOf.str,
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

  Future<List<EndUser>> getSubscriptions({
    required UserID subscriptionsOf,
    UserID? lastUserID,
  }) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _peopleProvider.getSubscriptions(
          userID: subscriptionsOf.str,
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
