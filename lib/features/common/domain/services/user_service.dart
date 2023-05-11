import 'package:injectable/injectable.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../entities/entities.dart';
import '../providers/user_provider.dart';
import '../value_objects/value_objects.dart';
import 'keep_fresh_token_service.dart';

@singleton
class UserService {
  const UserService({
    required KeepFreshTokenService keepFreshTokenService,
    required UserProvider userProvider,
    required EndUserRepository endUserRepository,
    required StaffUserRepository staffUserRepository,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _userProvider = userProvider,
        _endUserRepository = endUserRepository,
        _staffUserRepository = staffUserRepository;

  final KeepFreshTokenService _keepFreshTokenService;
  final UserProvider _userProvider;
  final EndUserRepository _endUserRepository;
  final StaffUserRepository _staffUserRepository;

  Future<User?> getUserByID({
    required UserID id,
    bool cached = true,
  }) async {
    if (cached) {
      User? user;

      if (id.isEndUserID) {
        user = await _endUserRepository.getByID(id: id);
      } else if (id.isStaffUserID) {
        user = await _staffUserRepository.getByID(id: id);
      }

      if (user != null) {
        return user;
      }
    }

    try {
      final response = await _keepFreshTokenService
          .request(() => _userProvider.getUserByID(id.str));

      return await response.value.match(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) async {
          final user = r.user;

          if (user is EndUser) {
            await _endUserRepository.addOrUpdate(user: user);
          } else if (user is StaffUser) {
            await _staffUserRepository.addOrUpdate(user: user);
          }

          return user;
        },
      );
    } catch (e) {
      // TODO: no internet
      throw Exception();
    }
  }
}
