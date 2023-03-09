import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../common/domain/domain.dart';
import '../dto/change_personal_info_request/change_personal_info_request.dart';
import '../providers/account_provider.dart';

@singleton
class AccountService {
  AccountService({
    required AuthStatusProvider authStatusProvider,
    required UserProvider userProvider,
    required AccountProvider accountProvider,
    required KeepFreshTokenService keepFreshTokenService,
    required EndUserRepository endUserRepository,
  })  : _authStatusProvider = authStatusProvider,
        _userProvider = userProvider,
        _accountProvider = accountProvider,
        _keepFreshTokenService = keepFreshTokenService,
        _endUserRepository = endUserRepository;

  final AuthStatusProvider _authStatusProvider;
  final UserProvider _userProvider;
  final AccountProvider _accountProvider;
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
            .request(() => _userProvider.getUserByID(id.str));

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

  Future<void> changePersonalInfo({
    required String firstName,
    required String lastName,
  }) async {
    final request = ChangePersonalInfoRequest(
      firstName: firstName,
      lastName: lastName,
    );

    final response = await _keepFreshTokenService
        .request(() => _accountProvider.changePersonalInfo(request));

    await response.value.fold(
      (l) {
        // TODO:
        throw Exception();
      },
      (r) async {
        final user = r.user;
        await _endUserRepository.setMe(user);
      },
    );
  }
}
