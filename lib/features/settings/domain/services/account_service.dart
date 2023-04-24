import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../../../../repositories/interfaces/interfaces.dart';
import '../../../common/domain/domain.dart';
import '../dto/dto.dart';
import '../providers/account_provider.dart';
import '../value_objects/device_session_list/device_session_list.dart';

final _logger = Logger('$AccountService');

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
        await _endUserRepository.removeMe();
        return;
      }

      try {
        final response = await _keepFreshTokenService
            .request(() => _userProvider.getUserByID(id.str));

        await response.value.match(
          // ignore: unnecessary_lambdas
          (l) {
            // TODO: think
            _logger.severe(l);
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

  Future<DeviceSessionList> getDevices() async {
    final response =
        await _keepFreshTokenService.request(_accountProvider.getDevices);

    return response.value.fold(
      (l) {
        // TODO:
        throw Exception();
      },
      (r) {
        return DeviceSessionList(
          thisSession: r.thisSession,
          otherSessions: r.otherSessions,
        );
      },
    );
  }
}
