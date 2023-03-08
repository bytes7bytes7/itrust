import 'dart:async';

import 'package:injectable/injectable.dart';

import '../entities/user/user.dart';
import '../providers/auth_status_provider.dart';
import '../providers/user_provider.dart';
import '../repositories/end_user_repository.dart';
import 'keep_fresh_token_service.dart';

@singleton
class AccountService {
  AccountService({
    required AuthStatusProvider authStatusProvider,
    required UserProvider userProvider,
    required KeepFreshTokenService keepFreshTokenService,
    required EndUserRepository endUserRepository,
  })  : _authStatusProvider = authStatusProvider,
        _userProvider = userProvider,
        _keepFreshTokenService = keepFreshTokenService,
        _endUserRepository = endUserRepository;

  final AuthStatusProvider _authStatusProvider;
  final UserProvider _userProvider;
  final KeepFreshTokenService _keepFreshTokenService;
  final EndUserRepository _endUserRepository;
  StreamSubscription? _authStatusSub;

  EndUser? get me => _endUserRepository.me;

  Stream<EndUser?> get onMeChanged => _endUserRepository.onMeChanged;

  @postConstruct
  void init() {
    _authStatusSub = _authStatusProvider.onUserIDChanged.listen((id) async {
      if (id == null) {
        return;
      }

      try {
        final response = await _keepFreshTokenService
            .request(() async => _userProvider.getUserByID(id.str));

        await response.value.match(
          (l) {
            // TODO: think
          },
          (r) async {
            final user = r.user;

            if (user is EndUser) {
              await _endUserRepository.setMe(user);
            }
          },
        );
      } catch (e) {
        // TODO: think
      }
    });
  }

  @disposeMethod
  void dispose() {
    _authStatusSub?.cancel();
  }
}
